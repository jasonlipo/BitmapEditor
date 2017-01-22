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