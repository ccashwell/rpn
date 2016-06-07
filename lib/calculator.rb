class Calculator
  OPERANDS = /^-?\d+(\.?\d+)?$/ # potentially negative number & optional decimal
  OPERATORS = /^[\+\-\*\/]$/ # the basic operators: add/subtract/multiply/divide

  ERRORS = {
    bad_input: "Unexpected input: %s",
    stack_size: "Insufficient stack size: 2+ operands required (%s present)"
  }

  def initialize
    @stack = [] # initialize an operation stack
  end

  def parse input
    case input
      when /q/ # acknowledge the "quit" command
        exit
      when OPERANDS # positive or negative operand with optional decimal
        @stack.push(input.to_f) # add the operand to the stack
      when OPERATORS # basic operators only -- add/subtract/multiply/divide
        if @stack.size < 2 # we need at least two operands to perform operations
          raise ArgumentError.new(ERRORS[:stack_size] % @stack.count)
        else
          a, b = @stack.pop(2) # snag the two most recent operands provided
          @stack.push a.send(input, b) # ...then apply the most recent operator
        end
      else raise ArgumentError.new(ERRORS[:bad_input] % input)
    end

    @stack.last # return whatever's last on the stack
  end
end
