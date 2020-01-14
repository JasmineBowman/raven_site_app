class RemoveUserIdFromOrganizations < ActiveRecord::Migration[6.0]
  def change
    remove_column :organizations, :user_id, :integer
  end
end
