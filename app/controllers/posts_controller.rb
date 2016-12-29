class PostsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_post, only: [:show, :edit, :update, :destroy, :like]  
	before_action :owned_post, only: [:edit, :update, :destroy]

	def index
		@posts = Post.all.order('created_at DESC').page params[:page]
	end
	def show
	end
	def new
		@post = current_user.posts.build
	end
	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			flash[:success] = "You have successfully created a post!"
			redirect_to root_path
		else
			flash.now[:alert] = "Woops!, your post couldn't be created! Please recheck the form to make sure all fields were inputted."
			render :new
		end
	end
	def edit 
	end
	def update
		if @post.update(post_params)
			flash[:success] = "You have successfully updated the post."
			redirect_to root_path
		else
			flash.now[:alert] = "Update failed. recheck the form to make sure all fields were inputted."
			render :edit
		end
	end
	def destroy
		@post.destroy
		redirect_to root_path
	end
	def like  
		if @post.liked_by current_user
			respond_to do |format|  
				format.html { redirect_to :back }
				format.js
			end  
		end
	end  

	private

	def post_params  
		params.require(:post).permit(:image, :caption)
	end
	def set_post
		@post = Post.find(params[:id])
	end  
	def owned_post
		unless current_user == @post.user
			flash[:alert] = "You can't delete what you don't own."
			redirect_to root_path
		end end

	end
