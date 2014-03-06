class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :photo
      t.string :header
      t.string :name
      t.string :location
      t.string :website
      t.string :bio
      t.integer :user_id
      t.timestamps
    end
  end
end
