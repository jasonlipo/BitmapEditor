require_relative "Commands"
require_relative "Image"
require_relative "Utils"
require_relative "BitmapEditor"
require "test/unit"

class TestBitmapEditor < Test::Unit::TestCase

  # Use this variable across the test suite
  # No IO interface in tests
  @@x = BitmapEditor.new(nil)

  # Testing the new_image functions
  def test_new_image
    assert_equal("You haven't created an image yet", @@x.process("S"))
    @@x.process("I 5 6")
    assert_equal("OOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO", @@x.process("S"))
    assert_equal("The image must be at minimum 1x1", @@x.process("I 0 9"))
    assert_equal("The image must be at minimum 1x1", @@x.process("I 0 9"))
    assert_equal("You should only enter 2 value(s) after the 'I'", @@x.process("I 8 7 2"))
    assert_equal("The maximum width and height is 250", @@x.process("I 300 62"))
    @@x.process("I 3 3")
    assert_equal("OOO\nOOO\nOOO", @@x.process("S"))
  end

  # TODO: Test the clear_image function
  # TODO: Test the set_pixel_colour function
  # TODO: Test the draw_line function
  # TODO: Further tests

end
