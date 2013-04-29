class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :name
      t.integer :course_id

      t.timestamps
    end
  end
end
