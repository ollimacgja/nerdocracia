class Art < ApplicationRecord
  mount_uploader :banner, ImageUploader
  mount_uploader :thumbnail, ImageUploader
  mount_uploader :original, ImageUploader

  belongs_to :user
end
