class CreateOrgs < ActiveRecord::Migration[6.0]
  def change
    create_table :orgs do |t|
      t.string :org_name
      t.string :org_email
      t.timestamps
    end
  end
end
