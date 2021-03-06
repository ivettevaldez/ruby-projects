# frozen_string_literal: true

# Add topic reference to blogs.
class AddTopicReferenceToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :blogs, :topic, foreign_key: true
  end
end
