class TweetsController < ApplicationController


  def show
    @tweets = Tweet.all
  end

  def new
   @tweet = current_user.tweet.build
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save 
      redirect_to user_path(current_user)
    else
      redirect_to users_path(current_user)
    end
  end

  def destroy
    @tweet.destroy
  end

  private

    def set_tweet
      @tweet = tweet.find(params[:id])
    end


    def tweet_params
      params.require(:tweet).permit(:post, :user_id)
    end
end



