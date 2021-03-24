class AddImageUrlToBoxes < ActiveRecord::Migration[6.1]
  def change
    add_column :boxes, :image_url, :string
  end
end
