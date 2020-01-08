require "byebug"

class Calculator
    def sum(a, b)
        a + b
    end

    def subtract(a, b)
        a - b
    end
end

calculator = Calculator.new
tests_sum = {
    [1, 2] => 3,
    [5, 6] => 11,
    [100, 1] => 101
}

tests_sum.each do |input, expected_result|
    byebug
    current_result = calculator.sum(input[0], input[1])
    if current_result != expected_result
        raise "Test failed for input #{input}. Current result: #{current_result} / Expected result: #{expected_result}"
    end
end