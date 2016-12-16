class CreateWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.string :name
      t.string :wish_type
      t.string :price
      t.string :location
      t.string :date_to_visit
      t.string :website_link
      t.string :image_url
      t.string :description
      t.text :tags
      t.string :status

      t.timestamps
    end
  end
end
