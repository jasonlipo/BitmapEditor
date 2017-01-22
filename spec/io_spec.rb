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
    end

    context "unknown inputs" do
    end

    context "valid inputs followed by additional characters" do
    end

  end

end