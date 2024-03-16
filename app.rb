require "functions_framework"

FunctionsFramework.http "app" do |request|
 a = request.params["a"].to_i
 b = request.params["b"].to_i
 calculator = Calculator.new
 add = calculator.add(a, b)
 "Result: #{add}"
end

class Calculator
 def add(a, b)
   a + b
 end
end