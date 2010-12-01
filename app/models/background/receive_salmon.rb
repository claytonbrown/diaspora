require 'resque'

module Background
  module ReceiveSalmon 
    @queue = :receive
    def self.perform(user_id, xml)
      user = User.find(user_id)
      user.receive_salmon(xml)
    end
  end
end
