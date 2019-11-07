class FriendshipsController < ApplicationController
  
  def index
    # @friendships = Friendship.all
    @images = (Image.all - current_user.images).shuffle
  end
end
