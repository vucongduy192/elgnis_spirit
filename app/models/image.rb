class Image < ApplicationRecord
    attr_accessor :distance

    mount_uploader :file ,ImageUploader
    belongs_to :user
    has_many :image_states
end