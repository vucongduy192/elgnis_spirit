class ImageStatesController < ApplicationController
  before_action :set_image_state, only: [:show, :edit, :update, :destroy]

  # GET /image_states
  # GET /image_states.json
  def index
    @image_states = ImageState.all
  end

  # GET /image_states/1
  # GET /image_states/1.json
  def show
  end

  # GET /image_states/new
  def new
    @image_state = ImageState.new
  end

  # GET /image_states/1/edit
  def edit
  end

  # POST /image_states
  # POST /image_states.json
  def create
    friend_id = image_state_params[:friend_id]
    img_id = image_state_params[:image_id]
    my_image_state = ImageState.find_by(user_id:current_user, friend_id:friend_id, image_id: img_id)
    if  my_image_state.blank?
      new_image_state = ImageState.new(user_id: current_user.id, friend_id: image_state_params[:friend_id], image_id: image_state_params[:image_id], state: "dislike")
      new_image_state.save
    end
  end

  # PATCH/PUT /image_states/1
  # PATCH/PUT /image_states/1.json
  def update
    respond_to do |format|
      if @image_state.update(image_state_params)
        format.html { redirect_to @image_state, notice: 'Image state was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_state }
      else
        format.html { render :edit }
        format.json { render json: @image_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_states/1
  # DELETE /image_states/1.json
  def destroy
    @image_state.destroy
    respond_to do |format|
      format.html { redirect_to image_states_url, notice: 'Image state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_state
      @image_state = ImageState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_state_params
      params.require(:image_state).permit(:friend_id, :image_id)
    end
end
