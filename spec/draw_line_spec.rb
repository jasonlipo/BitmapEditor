require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe BitmapEditor do

  before(:each) do
    @bitmap = BitmapEditor.new(nil)
  end

  describe "#draw_line" do
    
    context "before an image has been created" do
      it "should show an error message" do
        output1 = @bitmap.process("H 3 4 9 J")
        expect(output1).to eq "You haven't created an image yet"
        output2 = @bitmap.process("V 8 5 2 A")
        expect(output2).to eq "You haven't created an image yet"
      end
    end

    context "drawing a valid horizontal line" do
      it "should print the same image with horizontal list of colour" do
        @bitmap.process("I 8 7")
        @bitmap.process("H 2 7 3 B")
        output = @bitmap.process("S")
        expect(output).to eq "OOOOOOOO\nOOOOOOOO\nOBBBBBBO\nOOOOOOOO\nOOOOOOOO\nOOOOOOOO\nOOOOOOOO"
      end
      
      it "should not display any error messages" do
        @bitmap.process("I 8 7")
        output = @bitmap.process("H 2 7 3 B")
        expect(output).to be_empty
      end
    end

    context "drawing a valid vertical line" do
      it "should print the same image with horizontal list of colour" do
        @bitmap.process("I 8 7")
        @bitmap.process("V 7 3 5 D")
        output = @bitmap.process("S")
        expect(output).to eq "OOOOOOOO\nOOOOOOOO\nOOOOOODO\nOOOOOODO\nOOOOOODO\nOOOOOOOO\nOOOOOOOO"
      end
      
      it "should not display any error messages" do
        @bitmap.process("I 9 11")
        output = @bitmap.process("V 1 5 2 M")
        expect(output).to be_empty
      end
    end

    context "not using capital letters for colours" do
      it "should show an error message" do
        @bitmap.process("I 9 11")
        output = @bitmap.process("H 1 2 7 3")
        expect(output).to eq "Colours must be capital letters"
      end
    end

    context "entering wrong number of inputs" do
      it "should tell you how many inputs to enter" do
        @bitmap.process("I 9 11")
        error = @bitmap.process("H 1 1 1 1 D")
        expect(error).to eq "You should only enter 4 value(s) after the 'H'"
      end
    end

  end

end