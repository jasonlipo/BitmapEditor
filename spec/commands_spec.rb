require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe Commands do

  describe "#inputs" do
    
    context "empty input" do
      it "should be an empty list" do
        c = Commands.new("", BitmapEditor.new(nil))
        expect(c.inputs("")).to eq []
      end
    end

    context "multiple arguments" do
    end

    context "single argument" do
    end

  end

end