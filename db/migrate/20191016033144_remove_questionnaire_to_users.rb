class RemoveQuestionnaireToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :questionnaire, :boolean
  end
end
