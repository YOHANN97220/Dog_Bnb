class AddCoordinatesToBoxes < ActiveRecord::Migration[6.1]
  def change
    add_column :boxes, :latitude, :float
    add_column :boxes, :longitude, :float
  end
end
