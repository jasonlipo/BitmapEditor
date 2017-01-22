require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe Utils do

  describe "#is_uppercase_char" do
    
    context "try number" do
      it "should return false" do
        expect(Utils.is_uppercase_char("8HJ")).to be_falsey
        expect(Utils.is_uppercase_char("100")).to be_falsey
        expect(Utils.is_uppercase_char("65")).to be_falsey
        expect(Utils.is_uppercase_char("3.87")).to be_falsey
      end
    end

    context "try lowercase letter" do
    end

    context "try uppercase letter" do
    end

    context "try special character" do
    end

    context "try mixture of characters" do
    end

  end

  describe "#is_numeric" do
    
    context "empty list" do
    end

    context "list of numeric strings" do
    end

    context "list of numbers" do
    end

    context "mixture of numbers and words" do
    end

  end

end