class Post < ApplicationRecord

	belongs_to :user
	has_many :comments
	has_many :images
	has_many :likes

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


 	def user_can_like(user_id)

 		if self.likes.where(user_id: user_id).length>0

 			return false

 		else
 			return true

 		end

 	end


 	def user_like_string(user_id)

 		if self.user_can_like(user_id)

 			return '<i class="fas fa-thumbs-up"> </i> Like '.html_safe

 		else
 			return '<i class="fas fa-thumbs-up"></i> Like'.html_safe

 		end

 	end

end
