class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :industry
      t.text :description
      t.string :email
      t.string :phone
      t.string :zip

      t.timestamps
    end
  end
end
