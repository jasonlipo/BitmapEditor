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
        (1..20).each do |width|
          (1..20).each do |height|
            @bitmap.process("I " + width.to_s + " " + height.to_s)
            im = @bitmap.get_image
            expect(im.getWidth).to eq width
            expect(im.getHeight).to eq height
          end
        end
      end
    end

    context "trying an image smaller than 1x1 dimensions" do
      it "should throw an error to the screen" do
        message = @bitmap.process("I 0 9")
        expect(message).to eq "The image must be at minimum 1x1"
        message2 = @bitmap.process("I 50 0")
        expect(message2).to eq "The image must be at minimum 1x1"
        message3 = @bitmap.process("I 4 -7")
        expect(message3).to eq "The image must be at minimum 1x1"
      end

      it "should not allow you to print the image" do
        @bitmap.process("I 0 9")
        output = @bitmap.process("S")
        expect(output).to eq "You haven't created an image yet"
      end
    end

    context "when enterting malformed input" do
      it "should enforce only numbers" do
        output = @bitmap.process("I B 9")
        expect(output).to eq "X and Y must both be numbers"
      end

      it "should tell the user how many numbers to put after the 'I'" do
        output = @bitmap.process("I 8 7 2")
        expect(output).to eq "You should only enter 2 value(s) after the 'I'"
      end
    end

    context "trying an image larger than 250 in width or height" do
      it "should throw an error to the screen" do
        message = @bitmap.process("I 300 35")
        expect(message).to eq "The maximum width and height is 250"
        message2 = @bitmap.process("I 25 700")
        expect(message2).to eq "The maximum width and height is 250"
        message3 = @bitmap.process("I 251 251")
        expect(message3).to eq "The maximum width and height is 250"
      end

      it "should not allow you to print the image" do
        @bitmap.process("I 251 9")
        output = @bitmap.process("S")
        expect(output).to eq "You haven't created an image yet"
      end
    end

  end

end