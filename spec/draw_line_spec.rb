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
    end

    context "drawing a valid vertical line" do
    end

    context "not using capital letters for colours" do
    end

    context "entering wrong number of inputs" do
    end

  end

end