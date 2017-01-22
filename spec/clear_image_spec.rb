require_relative "../IOManager"
require_relative "../Commands"
require_relative "../Image"
require_relative "../Utils"
require_relative "../BitmapEditor"

describe BitmapEditor do

  before(:each) do
    @bitmap = BitmapEditor.new(nil)
  end

  describe "#clear_image" do
    
    context "before an image is created" do
    end

    context "when clearing a blank image" do
    end

    context "when clearing a valid image" do
    end

    context "when clearing twice in a row" do
    end

  end

end