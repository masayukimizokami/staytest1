class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :reserve_date
      t.string :name
      t.string :note

      t.timestamps
    end
  end
end
