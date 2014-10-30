
## CAPYBARA

require 'selenium-webdriver'
require_relative 'SeleniumBingSearchPageObjects.rb'

@driver = Selenium::WebDriver.for :firefox
myBingSearch = BingSearch.new(@driver)

Given(/^I Bing Search Homepage is open$/) do
 myBingSearch.BingSearchPage
end

When(/^I search for something$/) do
 myBingSearch.BingSearchFor("example text")
end


Then(/^I should see the search results page$/) do
 myBingSearch.BingVerifySeaerchResults
end

