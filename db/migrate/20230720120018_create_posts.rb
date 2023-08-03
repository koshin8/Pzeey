class CreatePosts < ActiveRecord::Migration[7.0]
  # def change
    # change_table :posts do |t|
    #   t.references :user, null: false, foreign_key: true
    #   t.string :image, null: false
    #   t.string :caption, null: false
    #   t.float :latitude
    #   t.float :longitude
    #   t.timestamps
    # end
    # end
  create_table :posts do |t|
    t.references :user, null: false, foreign_key: true
    t.string :body, null: false
    t.float :latitude
    t.float :longitude
    t.timestamps
  end
end
