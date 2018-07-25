class Api::UsersController < ApplicationController
	respond_to :json
	def index
		render json: {user:User.all.as_json(only:[:first_name])}
	end

	def create
		user = user_params
		uniq_id = SecureRandom.urlsafe_base64(nil, false)
		user_token = OpenSSL::HMAC.hexdigest("SHA1",uniq_id, user["user_name"])
		params_data = user_params.merge(uniq_id:uniq_id,user_token:user_token)
		@user = User.create(params_data)
		if @user.save
			UserMailer.confirm_mailer(@user).deliver_now
			render :json => {success:"User successfully Register,please confirm your email and continue"}
		else 
			if @user.errors.any?
				render json:{error: @user.errors.messages}
			else
				render json:{error: 'something went wrong please try after sometime'}

			end
		end
	end

	def login
		@user = User.find_by_email(params[:email])
		render :json => {error:"Email not found"} and return unless @user.present?
		if @user && @user.authenticate(params[:password])
			render :json => {user:@user.as_json(only:[:user_name,:user_token,:email]),success:"User successfully logged in"}
		else
			render :json => {error: "Please enter correct credentials"}
		end
	end
	
	def email_approval
		@user = User.find_by_uniq_id(params[:id])
		if @user.present?
			@user.update(email_confirmed:true)
			redirect_to 'http://localhost:3000/bookmyplay/login', notice:'Email successfully confirmed please login to continue'
		end
	end

	def forgot_password
		@user = User.find_by_email(params["email"])
		unless @user.present?
			@user = User.find_by_user_name(params["email"])
		end
		if @user.present?
			UserMailer.forgot_password(@user).deliver_now
			render json:{success:'Please check your mail to reset your password'}
		else
			render json:{error: 'User not found'}
		end
	end

	def reset_password
		@user = User.find_by_uniq_id(params[:id])
		if @user.present?
			
		else

		end
	end

	def check_email
		@user = User.find_by_email(params[:email])
		message = 'Email already exists'
		unless @user.present?
			@user = User.find_by_user_name(params[:email])
			message = 'User name already taken'
		end
		if @user.present?
			render :json => {error: message}
		else
			render :json => {success: ''}
		end
	end

	private 
	def user_params
		params.require(:user).permit(:first_name,:last_name,:email,:password,:password_confirmation,:user_name,:mobile_number)
	end
end


