# Skill model.
class Skill < ApplicationRecord
  # frozen_string_literal: true

  include Placeholder

  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
