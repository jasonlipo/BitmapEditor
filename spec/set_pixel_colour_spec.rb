require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe BitmapEditor do

  before(:each) do
    @bitmap = BitmapEditor.new(nil)
  end

  describe "#set_pixel_colour" do
    
    context "before an image is created" do
    end

    context "when entering wrong number of inputs" do
    end

    context "when not typing capital letters for colours" do
    end

    context "when trying to colour a pixel not in the image" do
    end

    context "setting the colour of a valid pixel" do
    end

  end

end