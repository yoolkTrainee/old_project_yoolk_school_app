class Textbook < ActiveRecord::Base
  attr_accessible :author, :publisher, :title, :uri, :year, :image,:meterial, :meterials
  mount_uploader :image, ImageUploader
  has_many :materials
  has_many :courses, :through => :materials
  has_many :materials, :dependent => :destroy
 
  validates :title, 
    :presence => true,
    :length => {:maximum => 60}

  validates :author,
    :presence => true, 
    :length => {:maximum => 45}

  validates :publisher, 
    :presence => true,   
    :length => {:maximum => 45}

  # validates :year, presence: true
  # validates_length_of :year, :maximum => 4
    
  validates :year, 
    :presence => true,   
    :length => {:maximum => 4}

  validates :uri, 
    :presence => true,   
    :length => {:maximum => 60}


end


 