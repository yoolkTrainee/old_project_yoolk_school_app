require 'spec_helper'

describe CoursesTutor do
  context 'CoursesTutor Relationship with course, tutor' do

    before(:each) do 
      @courses_tutor = FactoryGirl.build(:CoursesTutor, :course_id => 1, :tutor_id => "Daren")
    end

    it 'FactoryGril CoursesTutor must be valid'  do 
      @courses_tutor.should be_valid
    end

    it 'Should belong_to Course' do
      @courses_tutor.should belong_to(:course)
    end

     it 'Should belong_to Tutor' do
      @courses_tutor.should belong_to(:tutor)
    end
  end
end
