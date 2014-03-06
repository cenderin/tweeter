class Newsletter < ActiveRecord::Base
	after_create :notify

	def notify
		UserMailer.newsletter_form(self).deliver
	end

end
