class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :surname
      t.date :dob
      t.text :bio
      t.bigint :user_id
      t.timestamps
    end
  end
end
