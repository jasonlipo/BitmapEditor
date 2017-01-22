require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe BitmapEditor do

  before(:each) do
    @bitmap = BitmapEditor.new(nil)
  end

  describe "#show_image" do
    
    context "after creating a valid image" do
      it "should print the correct representation" do
      end
    end

    context "if no image has been created" do
      it "should give an error message" do
      end
    end

  end

end