class Image < ApplicationRecord
    attr_accessor :distance

    mount_uploader :file ,ImageUploader
    belongs_to :user
    
    def set_distance(distance)
        self.distance = distance
    end
end