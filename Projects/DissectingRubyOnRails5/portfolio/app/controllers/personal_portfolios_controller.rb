class PersonalPortfoliosController < ApplicationController
    def index
        @portfolio_items = PersonalPortfolio.all
    end

    def new
        @portfolio_item = PersonalPortfolio.new
    end

    def create
        @portfolio_item = PersonalPortfolio.new(params.require(:personal_portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to @portfolio_item, notice: 'Portfolio item was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end
end
