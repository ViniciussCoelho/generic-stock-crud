class CreateOrganizationData < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_data do |t|
      t.string :color
      t.timestamps
    end
  end
end
