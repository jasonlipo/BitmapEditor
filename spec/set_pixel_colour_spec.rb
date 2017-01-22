require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe BitmapEditor do

  before(:each) do
    @bitmap = BitmapEditor.new(nil)
  end

  describe "#set_pixel_colour" do
    
    context "before an image is created" do
      it "should display an error message" do
        output = @bitmap.process("L 1 2 3")
        expect(output) to eq "You haven't created an image yet"
      end
    end

    context "when entering wrong number of inputs" do
      it "should tell you how many inputs to enter after the 'L'" do
        output = @bitmap.process("L 123")
        expect(output).to eq "You should only enter 3 value(s) after the 'L'"
      end
    end

    context "when not typing capital letters for colours" do
      it "should not let you colour the image" do
        @bitmap.process("I 4 5")
        message = @bitmap.process("L 1 2 3")
        expect(message).to eq "Colours must be capital letters"
      end
      
      it "should show the image unaffected" do
        @bitmap.process("I 4 5")
        original = @bitmap.process("S")
        @bitmap.process("L 1 2 3")
        after = @bitmap.process("S")
        expect(after).to eq original
      end
    end

    context "when trying to colour a pixel not in the image" do
    end

    context "setting the colour of a valid pixel" do
    end

  end

end