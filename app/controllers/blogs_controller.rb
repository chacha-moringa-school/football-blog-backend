class BlogsController < ApplicationController
  # before_action :set_blog, only: %i[ show update destroy ]
  # before_action :authorize
  # skip_before_action :authorize, only: [:index]
  before_action :authorize_user, only: [:update, :destroy]


  # GET /blogs
  def index
    @blogs = Blog.all

    render json: @blogs
  end

  # GET /blogs/1
  def show
    blog= Blog.find_by(id: params[:id])
    render json: blog, status: :ok
  end

  # POST /blogs
  def create
    @blog = current_user.blogs.build(blog_params)

    if @blog.save
      render json: @blog, status: :created, location: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blogs/1
  def update
    blog = Blog.find_by(id: params[:id])
    if blog
      blog.update!(blog_params)
      render json: blog
    else
      render json: {error: "unable to update"}, status: :unprocessable_entity
    end
  end

  # DELETE /blogs/1
  def destroy
    blog = Blog.find_by(id: params[:id])
    blog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:image_url, :title, :news, :user_id)
    end

    def authorize
      return render json: {message: "Kindly login"} unless session.include? :user_id
    end

    def authorize_user
      blog = Blog.find(params[:id])
      unless current_user == blog.user
        render json: { error: 'You are not authorized to perform this action.' }, status: :unauthorized
      end
    end
end
