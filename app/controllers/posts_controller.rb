class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    # @post = Post.new

    @post = current_user.posts.build
  end

  def edit
  end

  def create
    # @post = Post.new(post_params)

    # if @post.save
    #   redirect_to @post, notice: 'Post was successfully created.'
    # else
    #   render :new
    # end
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: '投稿が作成されました！！'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
    #   params.require(:post).permit(:caption, image:)
      params.require(:post).permit(:body,:image)
    end

    

end
