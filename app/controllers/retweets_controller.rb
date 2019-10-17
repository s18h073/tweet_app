class RetweetsController < ApplicationController
    before_action :authenticate_user
    
    def create
      @post = Post.find_by(id: params[:post_id])
      @retweet = Retweet.new(user_id: @current_user.id, post_id: params[:post_id], content: nil)
      @retweet.save
      redirect_to("/posts/#{params[:post_id]}")
    end
  
    def destroy
      @retweet = Retweet.find_by(user_id: @current_user.id, post_id: params[:post_id])
      @retweet.destroy
      redirect_to("/posts/#{params[:post_id]}")
    end
    
  end