class AddPostIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :post_id, :integer
    add_column :comments, :content, :string
  end
end
