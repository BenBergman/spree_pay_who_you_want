class AddNonSplitAmountToVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :non_split_amount, :decimal, :precision => 8, :scale => 2, :default => 0

    Spree::Variant.reset_column_information

    say_with_time 'Setting non_split_amount to variant price' do
      Spree::Variant.all.each do |v|
        if v.price
          v.update_attributes!(:non_split_amount => v.price)
        elsif v.product && v.product.master.price
          v.update_attributes!(:non_split_amount => v.product.master.price)
        else
          raise 'No price found to copy over to recommended_price and minimum_price'
        end
      end
    end
  end
end
