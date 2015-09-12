class CreateFlyersTable < ActiveRecord::Migration
  def change
    create_table :flyers_tables do |t|
      t.string :organization_id, null: false
      t.string :image, null: false
      t.string :address
      t.string :contact, null: false
      t.string :contact_email
      t.string :category
      t.string :date
      t.string :time
      t.string :tags
      t.text :information
      
      t.timestamps
    end
  end
end
