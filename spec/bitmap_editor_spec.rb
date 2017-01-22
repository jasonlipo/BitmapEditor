require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe BitmapEditor do

  before(:each) do
    @bitmap = BitmapEditor.new(nil)
  end

  describe "#new_image" do
    
    context "before intiailising the new image" do 
      it "should give an error when trying to print the image" do 
        message = @bitmap.process("S") 
        expect(message).to eq "You haven't created an image yet"
      end
    end

    context "when sending in valid input" do
      
      before(:each) do
        @output = @bitmap.process("I 5 6")
      end
      
      it "should not return any output" do
        expect(@output).to be_empty
      end
      
      it "should have the correct image dimensions" do
        im = @bitmap.get_image
        expect(im.getWidth).to eq 5
        expect(im.getHeight).to eq 6
      end

    end

  end

end