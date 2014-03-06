class StaticPagesController < ApplicationController
	layout 'tweeter'

  def welcome
  	UserMailer.welcome(current_user).deliver
  	redirect_to user_path(current_user), notice: "welcome WHY ARE YOU NOT DOING STUFF"
  end

  def newsletter
    @newsletter = Newsletter.new
    if request.post?
      @newsletter.assign_attributes(news_params)
      if @newsletter.save
        redirect_to root_path, notice: "thanks for signing your soul away!"
      end
    end
  end

  def about
  end

  def tos
  end

  def privacy
  end
  private
  def news_params
    params.require(:newsletter).permit(:email)
  end
  
end
