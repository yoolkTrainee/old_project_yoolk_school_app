class CreateTextbooks < ActiveRecord::Migration
  def change
    create_table :textbooks do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :year
      t.string :uri

      t.timestamps
    end
  end
end
