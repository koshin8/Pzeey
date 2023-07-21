class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    change_table :likes do |t|
      # t.references :user, null: false, foreign_key: true
      # t.references :post, null: false, foreign_key: true

      # t.timestamps
    end
  end
end
