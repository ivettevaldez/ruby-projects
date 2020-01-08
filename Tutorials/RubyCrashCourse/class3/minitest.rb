require "minitest/autorun"

class Calculator
    def sum(a, b)
        a + b
    end

    def subtract(a, b)
        a - b
    end
end

class TestCalculator < Minitest::Test
    def setup
        @calculator = Calculator.new
    end

    def test_sum_positives
        result = @calculator.sum(1, 3)
        assert_equal result, 4
    end

    def test_sum_negatives
        result = @calculator.sum(-1, -3)
        assert_equal result, -4
    end

    def test_sum
        result = @calculator.sum(1, -3)
        assert_equal result, -2
    end
end