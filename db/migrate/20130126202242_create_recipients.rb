class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :spree_product_recipients do |t|
      t.references :product
      t.references :recipient

      t.timestamps
    end

    add_index :spree_product_recipients, [:product_id], :name => 'index_product_recipients_on_product_id'

    create_table :spree_recipients do |t|
      t.string :name
      t.text :description
      t.text :pay_out_note

      t.timestamps
    end

  end
end
