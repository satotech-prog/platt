class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]

  def index
    @tweets = Tweet.all.order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user).order("created_at DESC")
  end

  def destroy
    tweet = Tweet.find(params[:id])
    redirect_to root_path if tweet.destroy
  end

  def search
    @tweets = Tweet.search(params[:keyword])
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :exposition, :image).merge(user_id: current_user.id)
  end
end
