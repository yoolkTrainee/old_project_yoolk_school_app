class Material < ActiveRecord::Base
  attr_accessible :course_id, :textbook_id

  belongs_to :course
  belongs_to :textbook
end
