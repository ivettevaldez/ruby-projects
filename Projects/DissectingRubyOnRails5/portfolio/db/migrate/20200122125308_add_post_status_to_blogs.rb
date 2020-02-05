# frozen_string_literal: true

# Add post status to blogs.
class AddPostStatusToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :status, :integer, default: 0
  end
end
