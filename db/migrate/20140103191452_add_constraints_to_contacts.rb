class AddConstraintsToContacts < ActiveRecord::Migration
  def up
    change_column :contacts, :first_name, :string, null: false
    change_column :contacts, :last_name, :string, null: false
  end


end
