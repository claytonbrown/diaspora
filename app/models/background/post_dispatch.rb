require 'resque'

module Background
  module PostDispatch
    @queue = :default

    def self.perform(user_id, post_id, to)
      require File.join(Rails.root, 'app', 'models', 'comment') #why?
      user = User.find_by_id(user_id)
      post = Post.find_by_id(post_id)
      user.dispatch_post(post, :to => to)
    end
  end
end
