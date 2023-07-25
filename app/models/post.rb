class Post < ApplicationRecord
    has_one_attached :image
    validates :body, length: { maximum: 10 } # テキストは10文字まで
    validate :image_presence

    def image_presence
        errors.add(:image, "can't be blank") unless image.attached?
    end
    
    belongs_to :user
  end

  