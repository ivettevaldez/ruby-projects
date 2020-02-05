# Topic model.
class Topic < ApplicationRecord
  # frozen_string_literal: true

  validates_presence_of :title

  has_many :blogs
end
