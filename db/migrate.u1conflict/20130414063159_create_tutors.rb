class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :designatory
      t.string :language
      t.string :skillset
      t.string :uri

      t.timestamps
    end
  end
end
