require 'spec_helper'

describe Tutor do
  context 'Title : Validation of Tutor' do

    it ' When title is Presence ' do 
      tutor = FactoryGirl.build(:tutor, :title => "Ruby On Rails")
      tutor.should be_valid
    end

    it ' When title is not Presence' do
      tutor = FactoryGirl.build(:tutor, :title  => "")
      tutor.should_not be_valid
    end

    it 'When the charater less than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :title => "Test Rang input from user")
      tutor.should be_valid
    end

    it 'When the charater more than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :title => "Test Rang input from user"*33)
      tutor.should_not be_valid
    end
  end

  context 'First Name : Validation of Tutor  ' do
    it ' When the first_name is Presence' do
      tutor = FactoryGirl.build(:tutor, :first_name => "Darren")
      tutor.should  be_valid
    end

    it 'When the first_name is not Presence' do
      tutor = FactoryGirl.build(:tutor, :first_name => nil)
      tutor.should_not be_valid
    end

    it 'When the charater less than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :first_name => "Test Rang input from user")
      tutor.should be_valid
    end

    it 'When the charater more than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :first_name => "Test Rang input from user"*33)
      tutor.should_not be_valid
    end
  end

  context 'Last Name : Validation of Tutor  ' do
    it ' When the first_name is Presence' do
      tutor = FactoryGirl.build(:tutor, :last_name => "Jensen")
      tutor.should  be_valid
    end

    it 'When the first_name is not Presence' do
      tutor = FactoryGirl.build(:tutor, :last_name => nil)
      tutor.should_not be_valid
    end

    it 'When the charater less than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :last_name => "Test Rang input from user")
      tutor.should be_valid
    end

    it 'When the charater more than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :last_name => "Test Rang input from user"*33)
      tutor.should_not be_valid
    end
  end

    context ' Designatory : Validation of Tutor  ' do
    it ' When the first_name is Presence' do
      tutor = FactoryGirl.build(:tutor, :designatory  => "Jensen")
      tutor.should  be_valid
    end

    it 'When the first_name is not Presence' do
      tutor = FactoryGirl.build(:tutor, :designatory => nil)
      tutor.should_not be_valid
    end

    it 'When the charater less than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :designatory => "Test Rang input from user")
      tutor.should be_valid
    end

    it 'When the charater more than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :designatory => "Test Rang input from user"*33)
      tutor.should_not be_valid
    end
  end

  context ' Language : Validation of Tutor  ' do
    it ' When the first_name is Presence' do
      tutor = FactoryGirl.build(:tutor, :language  => "Jensen")
      tutor.should  be_valid
    end

    it 'When the first_name is not Presence' do
      tutor = FactoryGirl.build(:tutor, :language => nil)
      tutor.should_not be_valid
    end

    it 'When the charater less than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :language => "Test Rang input from user")
      tutor.should be_valid
    end

    it 'When the charater more than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :language => "Test Rang input from user"*33)
      tutor.should_not be_valid
    end
  end

  context ' Skillset : Validation of Tutor  ' do
    it ' When the first_name is Presence' do
      tutor = FactoryGirl.build(:tutor, :skillset  => "Jensen")
      tutor.should  be_valid
    end

    it 'When the first_name is not Presence' do
      tutor = FactoryGirl.build(:tutor, :skillset => nil)
      tutor.should_not be_valid
    end

    it 'When the charater less than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :skillset => "Test Rang input from user")
      tutor.should be_valid
    end

    it 'When the charater more than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :skillset => "Test Rang input from user"*33)
      tutor.should_not be_valid
    end
  end  

    context ' URI : Validation of Tutor  ' do
    it ' When the first_name is Presence' do
      tutor = FactoryGirl.build(:tutor, :uri  => "Jensen")
      tutor.should  be_valid
    end

    it 'When the first_name is not Presence' do
      tutor = FactoryGirl.build(:tutor, :uri => nil)
      tutor.should_not be_valid
    end

    it 'When the charater less than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :uri => "Test Rang input from user")
      tutor.should be_valid
    end

    it 'When the charater more than 45 chars' do 
      tutor = FactoryGirl.build(:tutor, :uri => "Test Rang input from user"*33)
      tutor.should_not be_valid
    end
  end

  context 'Relationship: Tutor have many CoursesTutor dependent destroy' do
      it 'if Tutor delete? then CoursesTutor is dependent Destroy all' do
        tutor = FactoryGirl.build(:tutor)
        tutor.should have_many(:courses_tutors).dependent(:destroy)
     end
  end  
end
