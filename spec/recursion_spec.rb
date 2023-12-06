require "./lib/recursion"

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe "Recursion" do
  context "Lesson Exercises" do
    describe "#countdown" do
      it "counts down to zero from the inputted number" do
        expect(countdown(0)).to eq([0])
        expect(countdown(1)).to eq([1, 0])
        expect(countdown(3)).to eq([3, 2, 1, 0])
        expect(countdown(-1)).to eq([0])
      end
    end

    describe "#get_sum" do
      it "returns the sum of all the numbers in the array" do
        expect(get_sum([])).to be nil
        expect(get_sum([0])).to be 0
        expect(get_sum([3])).to be 3
        expect(get_sum([-5])).to be -5
        expect(get_sum([1, 2, 3, 4])).to be 10
        expect(get_sum([-80, 34, 7])).to be -39
      end
    end

    describe "#factorial" do
      it "returns the product of all positive integers less than or equal to n" do
        # 5! => 5 * 4 * 3 * 2 * 1 = 120

        expect(factorial(0)).to be 1
        expect(factorial(1)).to be 1
        expect(factorial(2)).to be 2
        expect(factorial(3)).to be 6
        expect(factorial(4)).to be 24
        expect(factorial(5)).to be 120
      end
    end

    describe "#reverse" do
      it "returns the string in reversed order" do
        expect(reverse("")).to eq("")
        expect(reverse(" ")).to eq(" ")
        expect(reverse(",.?!")).to eq("!?.,")

        expect(reverse("a")).to eq("a")
        expect(reverse("ab")).to eq("ba")
        expect(reverse("abc")).to eq("cba")
        expect(reverse("ABC")).to eq("CBA")
      end
    end

    describe "#power" do
      it "returns a number to a specific power" do
        # power(base, exponent) # 2 to the 4th power => 2 * 2 * 2 * 2 = 16

        expect(power(2, 0)).to be 1
        expect(power(2, 1)).to be 2
        expect(power(2, 2)).to be 4
        expect(power(2, 3)).to be 8
        expect(power(2, 4)).to be 16

        expect(power(3, 0)).to be 1
        expect(power(3, 1)).to be 3
        expect(power(3, 2)).to be 9
        expect(power(3, 3)).to be 27
        expect(power(3, 4)).to be 81
      end
    end

    describe "#is_palindrome?" do
      it "returns true/false for whether the given input is a palindrome" do
        # A palindrome is word/number that reads the same forwards and backwards. Examples include racecar, tacocat, and toot.

        expect(is_palindrome?("")).to be true
        expect(is_palindrome?("a")).to be true
        expect(is_palindrome?("racecar")).to be true
        expect(is_palindrome?("tacocat")).to be true
        expect(is_palindrome?("toot")).to be true

        expect(is_palindrome?("library")).to be false
        expect(is_palindrome?("dngojkafnghkoasng")).to be false
      end
    end
  end

  context "Additional Practice" do
    describe "#upcase" do
      it "returns the string with all characters capitalized" do
        expect(upcase("")).to eq("")
        expect(upcase(" ")).to eq(" ")
        expect(upcase(",.?!")).to eq(",.?!")

        expect(upcase("a")).to eq("A")
        expect(upcase("A")).to eq("A")
        expect(upcase("abc")).to eq("ABC")
        expect(upcase("Abc")).to eq("ABC")
      end
    end

    describe "#sum_of_digits" do
      it "returns the sum of all numbers from 1 to n (inclusive n)" do
        expect(sum_of_digits(5)).to be 15
        expect(sum_of_digits(1)).to be 1
        expect(sum_of_digits(9)).to be 45
        expect(sum_of_digits(-8)).to be nil
      end
    end

    describe "#in_stock?" do
      it "returns true/false for whether or not the shop offers the target ice cream flavor" do
        expect(in_stock?(['vanilla', 'strawberry'], 'blue moon')).to be false
        expect(in_stock?(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')).to be true
        expect(in_stock?(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')).to be false
        expect(in_stock?(['moose tracks'], 'moose tracks')).to be true
        expect(in_stock?([], 'honey lavender')).to be false
      end
    end

    context "Slightly More Challenging Problems" do
      describe "#find_max" do
        it "returns the max element in the array" do
          expect(find_max([])).to be nil
          expect(find_max([8])).to be 8
          expect(find_max([8, 3, 5, 1, 9])).to be 9
          expect(find_max([8, 3, 5, 1, 9, 4, 7, 2, 10, 6])).to be 10
        end
      end

      describe "#number_of_zeroes" do
        it "returns the number of zeroes in the array" do
          expect(number_of_zeroes([])).to be  0
          expect(number_of_zeroes([5, 5, 5])).to be  0
          expect(number_of_zeroes([5, 0, 0])).to be  2
          expect(number_of_zeroes([0, 0, 5])).to be  2
          expect(number_of_zeroes([5, 0, 3, 6, 0, 3, 0, 0])).to be  4
          expect(number_of_zeroes([0, 0, 0, 0, 0, 0, 0, 0])).to be  8
        end
      end

      describe "#just_positives" do
        it "returns the sum of all the positive integers" do
          expect(just_positives([])).to be 0
          expect(just_positives([-1])).to be 0
          expect(just_positives([0])).to be 0
          expect(just_positives([3,6,7,-1,-5,0,9])).to be 25
          expect(just_positives([-1,3,6,7,-1,-5,0,9])).to be 25
        end
      end

      describe "number_of_occurrences" do
        it "returns the number of occurrences of the target in the array" do
          expect(number_of_occurrences([], "a")).to be 0
          expect(number_of_occurrences([], 1)).to be 0
          expect(number_of_occurrences(["a", "b", "r", "a", "k", "a", "d", "a", "b", "r", "a"], "a")).to be 5
          expect(number_of_occurrences(["a", "b", "r", "a", "k", "a", "d", "a", "b", "r", "a"], "b")).to be 2
          expect(number_of_occurrences(["a", "b", "r", "a", "k", "a", "d", "a", "b", "r", "a"], "z")).to be 0
          expect(number_of_occurrences(["a", "b", "r", "a", "k", "a", "d", "a", "b", "r", "a"], 1)).to be 0
          expect(number_of_occurrences([1, 2, 18, 1, 11, 1, 4, 1, 2, 18, 1], 1)).to be 5
        end
      end
    end

    context "Challenging Problems" do
      describe "#fibonacci" do
        it "returns the nth number in the Fibonacci sequence" do
          # The Fibonacci sequence is a series of numbers where each number is the sum of the two preceding ones. It starts with 0 and 1, and the sequence goes like this: 0, 1, 1, 2, 3, 5, 8, 13, 21, and so on.

          expect(fibonacci(0)).to be 0
          expect(fibonacci(1)).to be 1
          expect(fibonacci(2)).to be 1
          expect(fibonacci(3)).to be 2
          expect(fibonacci(4)).to be 3
          expect(fibonacci(5)).to be 5
          expect(fibonacci(6)).to be 8
          expect(fibonacci(7)).to be 13
        end
      end
    end
  end
end
