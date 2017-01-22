require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe BitmapEditor do

  before(:each) do
    @bitmap = BitmapEditor.new(nil)
  end

  describe "io" do

    context "empty inputs" do
      it "should give you a prompt to enter something" do
        prompt = @bitmap.process("")
        expect(prompt).to eq "Please type a valid command, type ? for help"
        prompt2 = @bitmap.process("   ")
        expect(prompt).to eq "Please type a valid command, type ? for help"
      end
    end

    context "wrong number of inputs" do
      it "should tell you how many inputs to enter" do
        output = @bitmap.process("l82")
        expect(output).to eq "You should only enter 3 value(s) after the 'L'"
      end
    end

    context "unknown inputs" do
      it "should react as if empty input" do
        output = @bitmap.process("9kdj")
        expect(output).to eq "Please type a valid command, type ? for help"
      end
    end

    context "valid inputs followed by additional characters" do
    end

  end

end