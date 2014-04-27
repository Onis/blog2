class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new	
	end

	def edit
		@post = Post.find(params[:id])		
	end

	def create
		@post = Post.new(posts_params)
		@post.save
		redirect_to @post
	end

	def update
		@post = Post.find(params[:id])
		@post.update(posts_params)
		redirect_to @post		
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end



	private
  def posts_params
    params.require(:post).permit(:title, :content)
  end
end
