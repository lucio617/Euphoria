class Video < ApplicationRecord
    has_many :comments , foreign_key: 'id'
    has_one_attached :clip
    has_one_attached :thumbnail
    mount_uploader :video, VideoUploader
end
