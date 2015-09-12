class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :address
      t.string :contact
      t.string :contact_email
      t.string :category

      t.timestamps
    end
  end
end
