class DropAdminsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :admins
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
