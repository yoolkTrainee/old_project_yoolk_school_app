require 'spec_helper'

describe "Class" do

  before(:each){
    @klass = FactoryGirl.create(:klass, name: "SM-2.4")
  }

  context "Listing all Classes" do
    before{
      visit klasses_path
    }

    it "GET#Index" do
      page.should have_content("Class Form")
      # within "td#class_name" do
        page.should have_content("SM-2.4")
      # end

      page.should have_link "edit_#{@klass.id}"
      page.should have_link "delete_#{@klass.id}"

      page.should have_link("New Class")
    end

    it "Click on Edit Link should go to 'Class Edit Form'" do
      click_link("edit_#{@klass.id}")
      current_path == edit_klass_path(@klass)
    end

    it "Click on New Class Button should go to 'Create New Form'" do
      click_link "New Class"
      current_path == new_klass_path
    end

    it "Delete Class", js: true do
      expect{
        click_link "delete_#{@klass.id}"

        page.driver.browser.switch_to.alert.accept
        # binding.pry
        sleep(1)
      }.to change(Klass,:count).by(-1)

      page.should_not have_content "SM-2.4"
    end
  end

  context "POST#Create" do
    it "Successfully" do
      visit new_klass_path
      expect{
        fill_in "klass_name", with: "SM-2.4"
        click_button "Save"
      }.to change(Klass, :count).by(1)

      current_path.should == klasses_path
      page.should have_content("Create Successfully")
    end

    it "unsuccessfully" do
      visit new_klass_path
      expect{
        fill_in "klass_name", with: nil
        click_button "Save"
      }.not_to change(Klass, :count).by(1)

      page.should have_content("Create New Class")
      page.should have_content("Create unsuccessfully")
    end
  end

  context "POST#Update", focus: true do
    it "successfully" do
      visit edit_klass_path(@klass)

      fill_in "klass_name", with: 'SM-1.4'
      click_button "Save"

      current_path.should == klasses_path
      page.should have_content("Update successfully.")
    end

    it "unsuccessfully" do
      visit edit_klass_path(@klass)

      fill_in "klass_name", with: nil
      click_button "Save"

      page.should have_content("Edit Class")
      page.should have_content("Update unsuccessfully.")
    end
  end
  
end