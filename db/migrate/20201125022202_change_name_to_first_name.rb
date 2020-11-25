class ChangeNameToFirstName < ActiveRecord::Migration[6.0]
  def change
              #  table       old col  new col
    rename_column :contacts, :name, :first_name
  end
end
