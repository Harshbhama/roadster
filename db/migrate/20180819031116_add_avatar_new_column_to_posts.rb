class AddAvatarNewColumnToPosts < ActiveRecord::Migration[5.2]
  def up
    add_attachment :posts, :avatar
  end
   def down
    remove_attachment :posts, :avatar
  end
end
