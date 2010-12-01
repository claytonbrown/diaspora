require 'resque'

module Background
  module NewRequest
    @queue = :email
    def self.perform(recipient_id, sender_id)
      Notifier.new_request(recipient_id, sender_id).deliver
    end
  end
end

