class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :rating
      t.text :body

      t.timestamps
    end
  end
end