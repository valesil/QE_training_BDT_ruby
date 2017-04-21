Given(/^I have \$(\d+) in my account$/) do |balance|
  @balance = balance.to_i
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |amount|
  @money= amount.to_i
  @balance -= @money
end

Then(/^I should receive \$(\d+) cash$/) do |cash|
  puts "This is your $#{cash}"
end

Then(/^the balance of my account should be \$(\d+)$/) do |remaining|
  expect(@balance).to eq(remaining.to_i)
end