class PersonalPortfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.react_portfolio_items
        where(subtitle: 'React')
    end

    scope :ruby_on_rails_portfolio_items, -> {
        where(subtitle: 'Ruby on Rails')
    }
end
