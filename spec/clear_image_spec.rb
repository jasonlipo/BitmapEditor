require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe BitmapEditor do

  before(:each) do
    @bitmap = BitmapEditor.new(nil)
  end

  describe "#clear_image" do
    
    context "before an image is created" do
      it "should display an error message" do
        output = @bitmap.process("C")
        expect(output).to eq "You haven't created an image yet"
      end
    end

    context "when clearing a blank image" do
      it "should not return any output" do
        @bitmap.process("I 7 4")
        output = @bitmap.process("C")
        expect(output).to be_empty
      end

      it "should show the same result as before being cleared" do
        @bitmap.process("I 4 9")
        original = @bitmap.process("S")
        @bitmap.process("C")
        after = @bitmap.process("S")
        expect(after).to eq original
      end
    end

    context "when clearing a valid image" do
    end

    context "when clearing twice in a row" do
    end

  end

end