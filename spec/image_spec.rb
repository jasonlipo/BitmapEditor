require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe Image do

  describe "#fill" do
    it "should replace every pixel with this new letter" do
      @im = Image.new(5, 5)
      @im.fill("A")
      expect(@im.show).to eq "AAAAA\nAAAAA\nAAAAA\nAAAAA\nAAAAA"
      @im.fill("S")
      expect(@im.show).to eq "SSSSS\nSSSSS\nSSSSS\nSSSSS\nSSSSS"
    end
  end

  describe "#line" do
    it "should draw either a horizontal or vertical line" do
      @im = Image.new(3, 6)
      @im.line("H", 1, 3, 4, "N")
      expect(@im.show).to eq "OOO\nOOO\nOOO\nNNN\nOOO\nOOO"
      @im = Image.new(7, 2)
      @im.line("V", 4, 1, 2, "J")
      expect(@im.show).to eq "OOOJOOO\nOOOJOOO"
    end
  end

  describe "#fits_width" do
  end

  describe "#fits_height" do
  end

end