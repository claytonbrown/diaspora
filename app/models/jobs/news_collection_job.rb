class PhotoProcessingJob
  @queue = :photo_processing_job

  def self.perform(img_url)
    #todo
  end
end

