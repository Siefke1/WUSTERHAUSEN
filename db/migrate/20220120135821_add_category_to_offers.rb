class AddCategoryToOffers < ActiveRecord::Migration[6.0]
  def change
    add_reference :offers, :category, null: false, foreign_key: true
  end
end
