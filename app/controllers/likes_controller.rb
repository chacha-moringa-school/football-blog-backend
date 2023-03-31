class LikesController < ApplicationController
  before_action :set_like, only: %i[ show update destroy ]

  # GET /likes
  def index
    @likes = Like.all

    render json: @likes
  end

  # GET /likes/1
  def show
    render json: @like
  end

  # POST /likes
  def create
    like = Like.create!(like_params)
    if like
      render json: like, status: :ok
    else
      render json: {message: "unable to like"}, status: :unprocessable_entity
    end
    # existing_like = Like.find_by(user_id: current_user.id, blog_id: like.blog_id)
    # if existing_like
    #   render json: { error: 'You have already liked this blog post.' }, status: :unprocessable_entity
    # else
    #   render json: like.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /likes/1
  def update
    if @like.update(like_params)
      render json: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /likes/1
  def destroy
    like = Like.destroy_by_user(current_user.id, params[:blog_id])
    if like.present?
      head :no_content
    else
      render json: { error: 'You have not liked this blog post.' }, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def like_params
      params.permit(:blog_id, :user_id)
    end
end
