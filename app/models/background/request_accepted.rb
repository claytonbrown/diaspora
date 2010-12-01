require 'resque'

module Background
  module RequestAccepted 
    @queue = :email
    def self.perform(recipient_id, sender_id, aspect_id)
      Notifier.request_accepted(recipient_id, sender_id, aspect_id).deliver
    end
  end
end
