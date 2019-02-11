class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.integer :wine_id
      t.string :wine_name
      t.integer :year
      t.text :description
      t.string :type
      t.integer :profile_id

      t.timestamps
    end
  end
end
