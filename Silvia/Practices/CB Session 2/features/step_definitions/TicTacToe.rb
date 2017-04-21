Given(/^a board like this:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @board = table.raw
end

When(/^player (\w+) plays in row (\d+), column (\d+)$/) do |char, row, col|
	@board[row.to_i][col.to_i] = char
  puts @board
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::MultilineArgument::DataTable
  expected_table.diff!(@board)
end