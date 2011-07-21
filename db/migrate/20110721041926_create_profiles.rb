class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.references :user_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
