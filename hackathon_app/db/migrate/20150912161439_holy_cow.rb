class HolyCow < ActiveRecord::Migration
  def change
    rename_table :flyers_tables, :flyers
  end
end
