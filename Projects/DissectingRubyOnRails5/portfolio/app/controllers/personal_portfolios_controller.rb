class PersonalPortfoliosController < ApplicationController
    def index
        @portfolio_items = PersonalPortfolio.all
    end
end
