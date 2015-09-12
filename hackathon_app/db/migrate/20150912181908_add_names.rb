class AddNames < ActiveRecord::Migration

    def self.up
   add_column :flyers, :name, :string
 end

 def self.down
   remove_column :flyers, :name
 end

end
