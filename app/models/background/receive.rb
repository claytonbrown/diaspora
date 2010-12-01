require 'resque'

module Background
  module Receive
    @queue = :receive
    def self.perform(xml, user_id, person_id)
      recipient = User.find(user_id)
      sender = Person.find(person_id)
      recipient.receive(xml, sender)
    end
  end
end
