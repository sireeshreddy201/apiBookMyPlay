class UserMailer < ApplicationMailer
	default :from => 'default@example.com'
	def confirm_mailer(user)
		@user =  user
		mail(to: @user.email, subject: 'Confirm your account')
	end

	def forgot_password(user)
		@user =  user
		mail(to: @user.email, subject: 'Reset your password')
	end
end
