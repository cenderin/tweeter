 desc "Remove empty user_id tweets"
  task :tweet => :environment do 
  	Tweet.where(user_id: nil).destroy_all
	end
  		
 