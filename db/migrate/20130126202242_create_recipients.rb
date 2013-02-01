class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :spree_recipients do |t|
      t.string :name
      t.text :description
      t.text :pay_out_note

      t.timestamps
    end

#    create_table :variants_recipients (
#      variant_id integer not null references variant(id),
#      recipient_id integer not null references recipient(id),
#      primary_key(variant_id, recipient_id)
#    );
  end
end
