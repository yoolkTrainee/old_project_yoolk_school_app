require 'spec_helper'

  describe Course do
      it 'validation on course must be valid' do
        FactoryGirl.build(:course, 
          title: 'ruby', duration: 7, cost_per_day: 9).should be_valid
      end

      # it 'Course should have many Objective in relationship' do

      #   object1 = Objective.new(title: 'Introduction of Ruby')
      #   object2 = Objective.new(title: 'Ruby OOP')
      #   course = Course.new(title: 'Ruby BOok', objectives: [object1, object2])
      #   course.objectives.should include(object1)
      #   course.objectives.should include(object2)

      # end
      context 'Relationship: COURSE have many OBJECTIIVE' do
        it { should have_many(:objectives) }
      end

      context 'Relationship: Course belong to Category' do
        it {should belong_to(:category)}
      end

      context 'Relationship: COURSE have many OBJECTIIVE dependent destroy' do
        it { should have_many(:objectives).dependent(:destroy) }
      end

      context 'Relationship: Course have many Material' do
        it {should have_many(:materials)}
      end

      context 'Relationship: Course have many Textbook through Material' do
        it {should have_many(:textbooks).through(:materials)}
      end

      context 'Relationship: Course have many Material dependent destroy' do
        it {should have_many(:materials).dependent(:destroy)}
      end

      context 'Relationship: Course have many CoursesTutors' do
        it {should have_many(:coursesTutors)}
      end

      context 'Relationship: Course have many Tutor through CoursesTutors' do
        it {should have_many(:tutors).through(:coursesTutors)}
      end

      context 'Relationship: Course have many CoursesTutors dependent destroy' do
        it {should have_many(:coursesTutors).dependent(:destroy)}
      end

      context 'Relationship: Course have many Class' do
        it {should have_many(:klasses)}
      end

      context "Relationship: Course have many Class dependent 'nullify'" do
        it{should have_many(:klasses).dependent(:nullify)}
      end

  end
