class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.belongs_to :user
      t.string :category
      t.string :creator_individual
      t.string :creator_company
      t.string :title
      t.string :photo
      t.string :series
      t.string :purchase_date
      t.string :purchase_price
      t.timestamps null: false
    end
  end
end