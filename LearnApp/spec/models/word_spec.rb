require 'spec_helper'
 
describe Word do
  before :each do
    @word = Word.new(:description=>"Description", :entry=>"Entry", :category=>"Category")
  end

  describe "#new" do
      it "takes two parameters and returns a Word object" do
          @word.should be_an_instance_of Word
      end
  end

  describe "#description" do
      it "returns the description of the word" do
          @word.description.should eql "Description"
      end
  end
  describe "#entry" do
      it "returns the entry" do
          @word.entry.should eql "Entry"
      end
  end
  describe "#category" do
      it "returns the correct category" do
          @word.category.should eql "Category"
      end
  end

end
