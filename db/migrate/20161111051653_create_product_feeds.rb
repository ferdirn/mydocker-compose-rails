class CreateProductFeeds < ActiveRecord::Migration
  def change
    create_table :product_feeds do |t|
      t.string :name
      t.string :sku
      t.string :url

      t.timestamps null: false
    end
  end
end
