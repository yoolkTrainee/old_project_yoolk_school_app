class CoursesTutor < ActiveRecord::Base
  attr_accessible :course_id, :tutor_id

  belongs_to :course
  belongs_to :tutor
end
