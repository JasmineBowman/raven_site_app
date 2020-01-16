class AddImageColumnToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :image_url, :string
  end
end
