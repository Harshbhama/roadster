class LikesController < ApplicationController
  

  def toggle
  
  	@post = Post.find(params[:post_id])

  	if @post.user_can_like(current_user.id)

  		@like = Like.create(user_id: current_user.id, post_id: params[:post_id]);

  	else
  		Like.find_by(user_id: current_user.id, post_id: params[:post_id]).destroy

  	end


  end
end
