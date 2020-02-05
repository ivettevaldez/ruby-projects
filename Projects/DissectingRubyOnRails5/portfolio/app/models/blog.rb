# Blog model.
class Blog < ApplicationRecord
  # frozen_string_literal: true

  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic
end
