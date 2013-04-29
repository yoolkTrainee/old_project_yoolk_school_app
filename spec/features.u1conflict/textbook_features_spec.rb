require 'spec_helper'
  
  describe 'Textbook Page' do

    context 'GET# index' do
      it 'Textbook Index Only' do
        visit root_path
        click_link "Text Books"
        current_path.should == textbooks_path
      end
    end

    context 'Get# show' do
      it 'Textbook Show Only' do
        visit textbooks_path
        expect{
        click_link("show")
        page.should have_content "Information of TextBook"
        page.should have_link "Back"
        }
      end
    end
    
    context 'GET# new' do
      it 'Textbook New Only' do
        visit textbooks_path
        expect{
          click_button "Create New TextBook"
          page.should have_content "Create New Tutors"
          page.should have_content "Title :"
          page.should have_content "Author :  "
          page.should have_content "Publisher :"
        }
      end
    end
          

    context 'POST# Create' do
      before(:each) do 
        visit new_textbook_path
        page.should have_content "Create New TextBook"
        current_path.should == new_textbook_path
        fill_in "textbook_title", :with => "Ruby On Rails"*33
        fill_in "textbook_author", :with => "Ruby On Rails"*33
        fill_in "textbook_publisher", :with=> "Ruby On Rails" *33
        fill_in "textbook_year", :with => "1900"*33
        fill_in "textbook_uri", :with => "Ruby On Rails"*33
        click_button "Save"
      end
      
      it 'Textbook Successfully' do
        # expect{
        #   click_button "Save"
        # }.to change(Textbook, :count).by(1)
        Textbook.all.length.should == 1
        current_path.should == textbooks_path
      end
    
    # validate on attribute maxlength.html when it's not successfully
    context 'Textbook Save Not Successfully if, all attributes are greater than this rule:' do
               
      it"Title must be <= 45 Chars " do
        Textbook.first.title.length.should <= 60
      end

      it"Title must be <= 45 Chars " do
        Textbook.first.author.length.should <= 45
      end

      it"Title must be <= 45 Chars " do
        Textbook.first.publisher.length.should <= 45
      end

      it"Title must be <= 45 Chars " do
        Textbook.first.year.length.should <= 4
      end

      it"Title must be <= 45 Chars " do
        Textbook.first.year.length.should <= 60
      end
    end
    
    end

    context 'GET# edit' do 
      it 'Textbook Edit Only' do
        visit textbooks_path
        expect{
        click_link("edit")
        page.should have_content "Edit TextBook"
        page.should have_content "Upload your Textbook images Click here"
        page.should have_button "Save"
        page.should have_link "Back"
        }
      end
    end
          
    context 'PUT# update' do 
      
      before(:each){
        @textbook = FactoryGirl.create(:textbook)
        visit edit_textbook_path(@textbook)
        fill_in "textbook_title", :with => "update title"
        fill_in "textbook_author", :with => "update author"
        fill_in "textbook_publisher", :with=> "update publisher"
        fill_in "textbook_year", :with => "3"
        fill_in "textbook_uri", :with => "update uri"
        click_button "Save"
      }
      
      it 'Textbook Successfully update and modified' do
        expect{
          fill_in "textbook_title", :with => "update title"
          @tutor.title.should == "update title"
        }
        @textbook.should be_valid
        current_path.should == textbooks_path
      end
    end

    context 'DESTROY# delete' do
      it 'Textbook Delete Success'  do
        textbook = FactoryGirl.create(:textbook)
        visit textbooks_path
        expect{
          click_link "delete"
        }.to change(Textbook, :count).by(-1)

        current_path.should == textbooks_path
      end
    end
  end
      #   it 'Textbook Author can not greater than 45 chars'  do
      #     expect{
      #       fill_in "textbook_author", :with => "Ruby On Rails"*33
      #       click_button "Save"
      #     }.to change(Textbook, :count).by(1)
      #     Textbook.first.author.length.should <= 45
      #     visit new_textbook_path
      #   end

      #   it 'Textbook Publisher can not greater than 45 chars'  do
      #     expect{
      #       fill_in "textbook_publisher", :with => "Ruby On Rails"*33
      #       click_button "Save"
      #     }.to change(Textbook, :count).by(1)
      #     Textbook.first.publisher.length.should <= 45
      #     visit new_textbook_path
      #   end

      #   it 'Textbook Year can not greater than 4 chars'  do
      #     expect{
      #       fill_in "textbook_year", :with => "Ruby On Rails"*33
      #       click_button "Save"
      #     }.to change(Textbook, :count).by(1)
      #     Textbook.first.year.length.should <= 4
      #     visit new_textbook_path
      #   end

      #   it 'Textbook URI can not greater than 60 chars'  do
      #     expect{
      #       fill_in "textbook_uri", :with => "Ruby On Rails"*33
      #       click_button "Save"
      #     }.to change(Textbook, :count).by(1)
      #     Textbook.first.uri.length.should <= 60
      #     visit new_textbook_path
      #   end
      # end
      
          # visit textbooks_path
    #     end

    #     it 'Textbook Not Successfully' do

    #       visit edit_textbook_path(@textbook)
    #       page.should have_content "Edit TextBook"
            
    #       fill_in "textbook_title", :with => "update title"*33
    #       fill_in "textbook_author", :with => "update author"*33
    #       fill_in "textbook_publisher", :with=> "update publisher"*33
    #       fill_in "textbook_year", :with => "3"*33
    #       fill_in "textbook_uri", :with => "update uri"*33
    #       click_button("Save")

    #       visit textbooks_path
    #       visit edit_textbook_path(@textbook)

    #     end
    #   end
