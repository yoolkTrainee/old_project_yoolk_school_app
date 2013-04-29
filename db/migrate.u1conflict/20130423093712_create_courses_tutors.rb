class CreateCoursesTutors < ActiveRecord::Migration
  def change
    create_table :courses_tutors do |t|
      t.integer :course_id
      t.integer :tutor

      t.timestamps
    end
  end
end
