When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I fill in the "([^"]*)" field with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

When(/^I click on "([^"]*)"$/) do |field|
  click_on(field)
end

Then(/^I see the confirmation message$/) do
  expect(page).to have_content("Message scheduled successfully")
end
