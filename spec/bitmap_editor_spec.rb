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
      it "should have the correct image dimensions" do
        message = @bitmap.process("I 5 6")
        expect(message).to be_empty
        im = @bitmap.get_image
        expect(im.getWidth).to eq 5
        expect(im.getHeight).to eq 6
      end
    end
    
  end

end

# assert_equal("", x.process("I 5 6"))
# assert_equal("OOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO", x.process("S"))
# assert_equal("The image must be at minimum 1x1", x.process("I 0 9"))
# assert_equal("X and Y must both be numbers", x.process("I B 9"))
# assert_equal("You should only enter 2 value(s) after the 'I'", x.process("I 8 7 2"))
# assert_equal("The maximum width and height is 250", x.process("I 300 62"))
# assert_equal("", x.process("I 3 3"))
# assert_equal("OOO\nOOO\nOOO", x.process("S"))