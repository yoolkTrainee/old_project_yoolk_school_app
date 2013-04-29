require 'spec_helper'

describe Textbook do
  context ' Title: Validation of TexBook.' do
   
    it 'When title is Presence ' do
      textbook = FactoryGirl.build(:textbook, :title => "Ruby On Rails")
      textbook.should be_valid
    end

    it 'When title is not Presence ' do
      textbook = FactoryGirl.build(:textbook, :title => "")
      textbook.should_not be_valid
    end


    it 'When less than 60 chars' do
      textbook = FactoryGirl.build(:textbook, :title => "Test range of inpu")
      textbook.should be_valid
    end

    it 'When more than 60 chars ' do
      textbook = FactoryGirl.build(:textbook, :title => "Test range of inpu" *33)
      textbook.should_not be_valid
    end
  end

  # it 'FactoryGirl test' do
  #   FactoryGirl.create(:text_book).should be_valid
  # end

  context ' Author: Validation of TexBook.' do
    it 'When Author is Presence ' do
      textbook = FactoryGirl.build(:textbook, :author => "Bill Gate")
      textbook.should be_valid
    end

    it 'When Author is not Presence ' do
      textbook = FactoryGirl.build(:textbook, :author => "")
      textbook.should_not be_valid
    end


    it 'When Author less than 45 chars' do
      textbook = FactoryGirl.build(:textbook, :author => "Test range of input")
      textbook.should be_valid
    end

    it 'When Author more than 45 chars ' do
      textbook = FactoryGirl.build(:textbook, :author => "Test range of input" *33)
      textbook.should_not be_valid
    end
  end

  context ' Publisher: Validation of TexBook.' do
    
    it 'When Publisher is Presence ' do
      textbook = FactoryGirl.build(:textbook, :publisher => "Bill Gate")
      textbook.should be_valid
    end

    it 'When Publisher is not Presence ' do
      textbook = FactoryGirl.build(:textbook, :publisher => "")
      textbook.should_not be_valid
    end


    it 'When Publisher less than 45 chars' do
      textbook = FactoryGirl.build(:textbook, :publisher => "Test range of input")
      textbook.should be_valid
    end

    it 'When Publisher more than 45 chars ' do
      textbook = FactoryGirl.build(:textbook, :publisher => "Test range of input" *33)
      textbook.should_not be_valid
    end

  end

  context ' Year: Validation of TexBook.' do
    
    it 'When Year is Presence ' do
      textbook = FactoryGirl.build(:textbook, :year => "4")
      textbook.should be_valid
    end

    it 'When Year is not Presence ' do
      textbook = FactoryGirl.build(:textbook, :year => "")
      textbook.should_not be_valid
    end


    it 'When Year is less than 45 chars' do
      textbook = FactoryGirl.build(:textbook, :year => "4")
      textbook.should be_valid
    end

    it 'When Year is more than 45 chars ' do
      textbook = FactoryGirl.build(:textbook, :year => "Test range of input" *33)
      textbook.should_not be_valid
    end

  end

  context ' URI: Validation of TexBook.' do
    
    it 'When URI is Presence ' do
      textbook = FactoryGirl.build(:textbook, :uri => "yoolk.com.kh")
      textbook.should be_valid
    end

    it 'When URI is not Presence ' do
      textbook = FactoryGirl.build(:textbook, :uri => "")
      textbook.should_not be_valid
    end


    it 'When URI is less than 45 chars' do
      textbook = FactoryGirl.build(:textbook, :uri => "yoolk.com.kh")
      textbook.should be_valid
    end

    it 'When URI is more than 45 chars ' do
      textbook = FactoryGirl.build(:textbook, :uri => "Test range of input" *33)
      textbook.should_not be_valid
    end

  end

  context 'Relationship: Textbook have many Materials dependent destroy' do
     it 'if Tutor delete? then CoursesTutor is dependent Destroy all' do
        tutor = FactoryGirl.build(:textbook)
        tutor.should have_many(:materials).dependent(:destroy)
     end
  end  
end
