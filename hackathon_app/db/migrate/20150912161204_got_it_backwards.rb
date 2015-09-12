class GotItBackwards < ActiveRecord::Migration
  def change
    def self.up
      rename_table :flyers, :flyers_tables
    end

    def self.down
      rename_table :flyers_tables, :flyers
    end
  end
end
