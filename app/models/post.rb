class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :background_image, BackgroundImageUploader
  scope :sorted, lambda { order('created_at DESC') }
end
