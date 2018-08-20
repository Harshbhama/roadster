class AddAvatarToImage < ActiveRecord::Migration[5.2]
  def self.up
  
  add_column :images, :avatar_file_name, :string
  add_column :images, :avatar_content_type, :string
  add_column :images, :avatar_file_size, :integer
  add_column :images, :avatar_updated_at, :datetime
   end
   def self.down
  remove_column :images, :avatar_file_name, :string
  remove_column :images, :avatar_content_type, :string
  remove_column :images, :avatar_file_size, :integer
  remove_column :images, :avatar_updated_at, :datetime
   end
end