class UsersController < ApplicationController

	def show 

		@user = current_user
		@tweet = @user.tweets.build
		@tweets = @user.tweets
		
	end

end
