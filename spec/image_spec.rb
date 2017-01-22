require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe Image do

  describe "#fill" do
    context "when entering a letter" do
      it "should replace every pixel with this new letter" do
        @im = Image.new(5, 5)
        @im.fill("A")
        expect(@im.show).to eq "AAAAA\nAAAAA\nAAAAA\nAAAAA\nAAAAA"
        @im.fill("S")
        expect(@im.show).to eq "SSSSS\nSSSSS\nSSSSS\nSSSSS\nSSSSS"
      end
    end
  end

  describe "#line" do
  end

  describe "#fits_width" do
  end

  describe "#fits_height" do
  end

end