#   Copyright (c) 2010, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

require 'spec_helper'


describe Background::PostDispatch do 
  describe '.perform' do
    it 'calls dispatch post' do
      user = make_user
      aspect = user.aspects.create(:name => "foo")
      post = user.post(:status_message, :message => "foobar", :to => aspect.id.to_s) 
      user.should_receive(:dispatch_post)
      User.stub!(:find_by_id).and_return(user)
      Background::PostDispatch.perform(user.id, post.id, [aspect.id.to_s])
    end
  end
end
