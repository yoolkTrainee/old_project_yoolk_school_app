class RenameColumnTutor < ActiveRecord::Migration
  def up
    rename_column :courses_tutors, :tutor, :tutor_id
  end

  def down
  end
end
