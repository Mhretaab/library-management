class HomeController < ApplicationController
	def index
		@categories = Category.all.order('category_name ASC')
		@books = Book.paginate(:page => params[:page], :per_page => 2).order('title ASC')
		@page = params[:page]
		if params[:error]
			@error = params[:error]
		end
	end

	def login
		credential = Credential.authenticate(params[:email], params[:password])
		if credential.present?
			session[:current_user_id] = credential.user.id
			session[:groups] = credential.user.groups

			group = credential.user.groups.where(group_name: "Student")
			if group.present?
				redirect_to action: "student"
			end

			group = credential.user.groups.where(group_name: 'Professor')
			if group.present?
				redirect_to action: "proffessor"
			end

			group = credential.user.groups.where(group_name: 'Liberarian')
			if group.present?
				redirect_to liberarian_url
			end

			group = credential.user.groups.where(group_name: 'Admin')
			if group.present?
				redirect_to action: "admin"
			end

		else
			flash.now[:error] = "Invalid email/password combination"
			redirect_to action: "index", error: flash[:error]
		end
	end

	def admin

	end

	def proffessor

	end

	def student

	end
end
