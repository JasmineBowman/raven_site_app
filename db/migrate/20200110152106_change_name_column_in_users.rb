class ChangeNameColumnInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :highschool, :high_school
  end
end
