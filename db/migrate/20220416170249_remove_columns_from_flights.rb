class RemoveColumnsFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_id
    remove_column :flights, :arrival_id
  end
end
