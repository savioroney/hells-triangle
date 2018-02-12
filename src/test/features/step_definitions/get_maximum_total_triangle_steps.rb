require File.dirname(__FILE__) +  '/../../../../src/main/models/triangle.rb'

Given(/^a triangle with values:$/) do |table|
  values = table.raw.collect { |item| item[0].split(",").map(&:to_i)}
  @triangle = Triangle.new(values)
end

When(/^to obtain total maximum value$/) do
  @value = @triangle.get_maximum_total
end

Then(/^should return the value: (\d+)$/) do |expect_value|
  if expect_value != @value
    fail("Error! Expected value: "+ expect_value.to_s + ", Return value: " + @value.to_s)
  end
end