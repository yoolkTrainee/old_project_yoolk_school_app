class Tutor < ActiveRecord::Base
  attr_accessible :designatory, :first_name, :language, :last_name, :skillset, :title, :uri, :image
    mount_uploader :image, ImageUploader
    has_many :courses_tutors
    has_many :courses, :through => :courses_tutors
    has_many :courses_tutors, :dependent => :destroy

  validates :title, 
    :presence => true,
    :length => {:maximum => 45}

  validates :first_name, 
    :presence => true,
    :length => {:maximum => 45}

  validates :last_name, 
    :presence => true,
    :length => {:maximum => 45}

  validates :designatory, 
    :presence => true,
    :length => {:maximum => 45}

  validates :language, 
    :presence => true,
    :length => {:maximum => 45}

  validates :skillset, 
    :presence => true,
    :length => {:maximum => 45}
  
  validates :uri, 
    :presence => true,
    :length => {:maximum => 60}

    def full_name
      "#{first_name} #{last_name}"
    end
end
