class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    #binding.pry
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
     redirect_to root_path
    else
      render :new
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :exposition, :image)
  end

end
