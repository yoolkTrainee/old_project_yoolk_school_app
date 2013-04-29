require 'spec_helper'

  describe 'Tutor Page' do
    context 'GET# index' do
      it 'Tutor index Only' do
        visit root_path
        within "li.spec_tutor" do
          click_link "Tutors"
        end
        current_path.should == tutors_path
      end 
    end

    context 'GET# SHOW' do
      it 'Tutor Show Only' do 
        visit tutors_path
        expect{

          click_link("show")
        }
        page.should have_content "Information of Tutors"
        page.should have_link "Back"
      end
    end

    context 'GET# new' do
      it 'Tutor New Only' do
        visit tutors_path
        expect{
          click_button "Create New Tutor"
          page.should have_content "Create New Tutors"
          page.should have_content "Title :"
          page.should have_content "First Name :"
          page.should have_content "Last Name :"
        }
      end
    end    

    context 'POST# Create' , focus: true do        

      before(:each){
        visit tutors_path
        click_link "Create New Tutor"
        current_path.should == new_tutor_path
        select "Mr.", :from => "tutor_title"
        fill_in "tutor_first_name", :with => "Darren"*10
        fill_in "tutor_last_name", :with => "Jensen"*10
        fill_in "tutor_designatory", :with => "Jensen"*10
        fill_in "Language :", :with => "Jensen"*10
        fill_in "tutor_skillset", :with => "Jensen"*10
        fill_in "tutor_uri", :with => "Jensen"*10
        click_button "Save"
      }

      it 'Tutor Save Successfully' do
        Tutor.all.length.should == 1 
        current_path.should == tutors_path
      end

      # validation for attribute :maxlength (html) 
      context 'Save Not Successfully if all attributes are greater than this rule:' do
        it"First Name must be <= 45 Chars " do
          Tutor.first.first_name.length.should <= 45
        end

        it 'Last Name must be <= 45 Chars' do 
          Tutor.first.last_name.length.should <= 45
        end

        it 'Designatory must be <= 45 Chars ' do
          Tutor.first.designatory.length.should <= 45
        end

        it 'Language must be <= 45 Chars' do
          Tutor.first.language.length.should <= 45
        end

        it 'Skillset must be <= 45 Chars' do 
          Tutor.first.skillset.length.should <= 45
        end

        it 'URI must be <= 45 Chars' do
          Tutor.first.uri.length.should <= 45
        end
      end
    end


    context 'GET# Edit' do
      before{
        @tutor = FactoryGirl.create(:tutor)
        visit tutors_path
      }
      it 'Tutor Show Edit Only' do
        
        click_link "edit"
        current_path.should == edit_tutor_path(@tutor)
        page.should have_content "Edit Tutor"
        page.should have_content "Title :"
        page.should have_content "First Name :"
        page.should have_content "Last Name :"
        have_button "Save"
        have_button "Back"
        have_button "Browse"
      end


    context 'PUT# update' do

      before(:each) {
          @tutor = FactoryGirl.create(:tutor)
          visit edit_tutor_path(@tutor)
          select "Mr.", :from => "Title :"
          fill_in "tutor_first_name", :with => "Jonh"
          fill_in "tutor_last_name", :with => "Jonh"
          fill_in "tutor_designatory", :with => "Jonh"
          fill_in "tutor_language", :with => "English"
          fill_in "tutor_skillset", :with => "Norway"
          fill_in "tutor_uri", :with => "jonhnorway@yoolk.com"
          click_button ("Save")
        }

      it 'Tutor Successfully updated and modified'  do
          expect{
            fill_in "tutor_first_name", :with => "Jonh"
            @tutor.first_name.should == "Jonh"
          }
          @tutor.should be_valid
          current_path.should ==  tutors_path
      end
    end
  end

    context 'DESTROY# delete' do
      it 'Tutor Delete Successfully' do
        @tutor = FactoryGirl.create(:tutor) 
        visit tutors_path
        expect{
          click_link "delete"
          # page.driver.browser.switch_to.alert.accept
          # sleep(1)
        }.to change(Tutor, :count).by(-1)

        current_path.should == tutors_path
      end
    end
  end    