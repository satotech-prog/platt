class TweetsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @tweets = Tweet.all
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
  end

  def destroy
    tweet = Tweet.find(params[:id])
    redirect_to root_path if tweet.destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :exposition, :image).merge(user_id: current_user.id)
  end
end
