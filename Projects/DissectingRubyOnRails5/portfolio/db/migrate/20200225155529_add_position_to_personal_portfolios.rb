class AddPositionToPersonalPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :personal_portfolios, :position, :integer
  end
end
