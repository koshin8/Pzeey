class Post < ApplicationRecord
    has_one_attached :image
    validates :caption, length: { maximum: 10 } # テキストは10文字まで
  end
  