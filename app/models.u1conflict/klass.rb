class Klass < ActiveRecord::Base
  # set_table_name 'classes'
  self.table_name = 'classes'

  attr_accessible :course_id, :name

  belongs_to :course

  validates :name, presence: true, :length => {:maximum => 45}
end