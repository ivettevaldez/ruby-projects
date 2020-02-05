# frozen_string_literal: true

# Add roles to users.
class AddRolesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :roles, :string
  end
end
