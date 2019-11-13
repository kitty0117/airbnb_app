class RemoveQuetsionnaireToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :quetstionnaire, :boolean
  end
end
