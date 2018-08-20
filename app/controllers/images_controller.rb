class ImagesController < ApplicationController

	def create
		
		image = Image.create(avatar: params[:image][:avatar], post_id: params[:image][:post_id]);
 		 return redirect_to post_path(params[:image][:post_id]);
 	end
end
