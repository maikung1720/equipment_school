class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.datetime :rental_date
      t.datetime :due_date
      t.integer :User_id
      t.string :status

      t.timestamps null: false
    end
  end
end
