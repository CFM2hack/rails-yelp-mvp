class RemoveReviewsFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :reviews
  end
end
