class StaticPagesController < ApplicationController
	layout 'tweeter'

  def welcome
  	UserMailer.welcome(current_user).deliver
  	redirect_to user_path(current_user), notice: "welcome WHY ARE YOU NOT DOING STUFF"
  end

  def about
  end

  def tos
  end

  def privacy
  end
  
end
