require 'resque'

module Background
  module ReceiveMultiple 
    @queue = :email
    def self.perform(post_xml, user_ids, sender_id)
      sender = Person.find(sender_id)
      users = User.all(:id.in => user_ids)
      users.each do |user|
        user.receive(post_xml, sender)
      end
    end
  end
end

