require 'spec_helper'

describe Material do
 
    before(:each) do
      @material = FactoryGirl.build(:Material)
    end
  context 'Material Relationship with course, textbook' do
    
    it 'Factory Girl Materails must be valid' do
      @material.should be_valid
    end
 
    it 'has belongs_to course' do
      @material.should belong_to(:course)
    end
    
    it 'has belongs_to textbook' do
      @material.should belong_to(:textbook)
    end

  end

end
