class ChangeCartIdCouldBeNullLineitems < ActiveRecord::Migration[6.0]
  def change
    change_column :lineitems, :cart_id, :integer, :null => true
  end
end
