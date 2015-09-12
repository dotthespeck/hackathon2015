class ChangeNullConstraint < ActiveRecord::Migration
  change_column :flyers, :organization_id, :string, :default => 0, :null => false
end
