class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.string :email
      t.string :phone
      t.string :address
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
