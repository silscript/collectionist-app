class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :prints
      t.integer :user_id
      t.string :content
      t.string :username
      t.timestamps null: false
    end
  end
end