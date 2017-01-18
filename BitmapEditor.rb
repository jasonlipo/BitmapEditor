class BitmapEditor

  # Initialise the class as the program hasn't started yet
  @running = false

  # Start the program running
  # @public
  # @return void
  def start
    
    @running = true
    puts 'type ? for help'

    # Keep looping until the user ends the program
    while @running
      
      print '> '
      
      # Get the input from the user and switch on the first character
      input = gets.chomp
      first_char = input[0, 1].capitalize

      # Call a utiltity function to break down the white-spaced inputs
      # into an array of strings
      args = Utils.analyse_input(input)

      case first_char
        when '?'
          show_help
        when 'I'
          new_image(args)
        when 'X'
          exit_console
        else
          puts 'Unrecognised command "' + input + '"'
      end

    end

  end

  private
    
    # Create a new bitmap in the class
    # @private
    # @params args - The array of string arguments
    # @return void
    def new_image(args)
      puts args
    end

    # Exits the program
    # @private
    # @return void
    def exit_console
      puts "Thanks for running the program!"
      @running = false
    end

    # Prints help text
    # @private
    # @return void
    def show_help
      puts "I M N - Create a new M x N image. \n" +
           "C - Sets all pixels to colour 'O'. \n" +
           "L X Y C - Colours the pixel (X,Y) with colour C. \n" +
           "V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive). \n" +
           "H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive). \n" +
           "S - Show the contents of the current image \n" +
           "X - Terminate the session"
    end

end
