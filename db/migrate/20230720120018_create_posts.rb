class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :body, null: false
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end

# change_table :posts do |t|
#   t.string :image, null: false
#   t.references :user, null: false, foreign_key: true
#   t.string :caption, null: false
#   t.float :latitude
#   t.float :longitude
#   t.timestamps
# end