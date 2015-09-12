class TableName < ActiveRecord::Migration
  def change
    def self.up
    rename_table :flyers_tables, :flyers
  end

 def self.down
    rename_table :flyers, :flyers_tables
 end
  end
end
