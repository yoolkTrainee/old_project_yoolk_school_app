class AddImageToTextbook < ActiveRecord::Migration
  def change
    add_column :textbooks, :image, :string
  end
end
