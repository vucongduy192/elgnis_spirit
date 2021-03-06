class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update, :destroy]

  # GET /friendships
  # GET /friendships.json
  def index
    # @friendships = Friendship.all
    @disliked_image = ImageState.where(user_id: current_user.id)
    puts (@disliked_image[0])
    @images = (Image.all - current_user.images - Image.where(user_id: @suggest_user)).shuffle
    @advertisements = Advertisement.all.shuffle
    @existing_chats_users = current_user.existing_chats_users
    @gmap_key = 'AIzaSyA-IXkoMN3JHS7H7eqZVdSUOeBdF7G7j-I'
    # check key work: 
    # https://maps.googleapis.com/maps/api/distancematrix/json?origins=%C4%90%E1%BA%A1i%20h%E1%BB%8Dc%20Th%C6%B0%C6%A1ng%20m%E1%BA%A1i%20H%C3%A0%20N%E1%BB%99i&destinations=%C4%90%E1%BA%A1i%20h%E1%BB%8Dc%20B%C3%A1ch%20Khoa%20H%C3%A0%20N%E1%BB%99i&key=AIzaSyCcMJDRk9Sj2tpz7SVurwZCMdyg7q9Uoww

    @distances = Hash.new
    @images.each do |image|
      # url = URI.parse(
      #   "https://maps.googleapis.com/maps/api/distancematrix/json?origins=" \
      #   "#{URI.encode(current_user.school.name)}&destinations=#{URI.encode(image.user.school.name)}&key=#{@gmap_key}"
      # )
      # # Open the URI just like you were doing
      # response = open(url).read
      # puts(url)
      # # Parse the string response in JSON format
      # result = JSON.parse(response)
      # @distances[image.user.name] = result["rows"].first["elements"].first["distance"]["value"]

      @distances[image.user.name] = [12000, 7000, 14000, 10000].sample
    end
  end

  # GET /friendships/1
  # GET /friendships/1.json
  def show
  end

  # GET /friendships/new
  def new
    @friendship = Friendship.new
  end

  # GET /friendships/1/edit
  def edit
  end

  # POST /friendships
  # POST /friendships.json
  def create
    #check friendship exist?
    friend_id = friendship_params[:friend_id]
    friendship = Friendship.find_by(user_id:friend_id, friend_id:current_user)
    my_friendship = Friendship.find_by(user_id:current_user, friend_id:friend_id)
    if friendship.blank? and my_friendship.blank?
      new_friendship = Friendship.new(user_id: current_user.id, friend_id: friendship_params[:friend_id])
      new_friendship.save
    elsif friendship.present? and friendship.state == "pending"
      friendship.state = "approved"
      friendship.save
    end
  end

  # PATCH/PUT /friendships/1
  # PATCH/PUT /friendships/1.json
  def update
    respond_to do |format|
      if @friendship.update(friendship_params)
        format.html { redirect_to @friendship, notice: 'Friendship was successfully updated.' }
        format.json { render :show, status: :ok, location: @friendship }
      else
        format.html { render :edit }
        format.json { render json: @friendship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy
    @friendship.destroy
    respond_to do |format|
      format.html { redirect_to friendships_url, notice: 'Friendship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendship
      @friendship = Friendship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friendship_params
      params.require(:friendship).permit(:friend_id)
    end
end
