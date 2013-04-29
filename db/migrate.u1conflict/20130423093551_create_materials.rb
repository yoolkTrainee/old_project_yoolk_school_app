class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :course_id
      t.integer :textbook_id

      t.timestamps
    end
  end
end
