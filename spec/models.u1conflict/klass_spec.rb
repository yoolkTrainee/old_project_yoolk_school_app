require 'spec_helper'

describe Klass do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "validation presence to field 'name'" do
    klass = FactoryGirl.build(:klass, name: nil)
    klass.should_not be_valid
  end

  it "Name field should not be over 45 characters" do
    klass = FactoryGirl.build(:klass, name: 'SM-2.4')
    klass.should be_valid
  end

  context "Class should belong to Course" do
    it{should belong_to(:course)}
  end

end
