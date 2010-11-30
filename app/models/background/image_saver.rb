require 'resque'
module Background
  module ImageSaver
    @queue = :default

    def self.perform(photo_id, image_file)
      Photo.find_by_id(photo_id).image.store! image_file
    end
  end
end