class CreatePostmanUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :postman_users do |t|
      t.string :name
      t.string :email
      t.decimal :height
      t.decimal :weight

      t.timestamps
    end
  end
end
