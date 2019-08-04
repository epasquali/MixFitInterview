class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :IntakeVitC
      t.integer :IntakeVitD3
      t.integer :IntakeIron
      t.integer :ActivityVitC
      t.integer :ActivityVitD3
      t.integer :ActivityIron
      t.references :postman_user, foreign_key: true

      t.timestamps
    end
    add_index :recipes, [:postman_user_id, :created_at]
  end
end
