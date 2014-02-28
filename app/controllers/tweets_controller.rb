class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end


  def show
    @comment = @tweet.all
  end

  def new
   @tweet = current_user.tweets.build
  end

  def create
  end


  def update
   
  end


  def destroy
    @tweet.destroy
  end

  private

    def set_tweet
      @tweet = tweet.find(params[:id])
    end


    def tweet_params
      params.require(:tweet).permit(:post)
    end
end


