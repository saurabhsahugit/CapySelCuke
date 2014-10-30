require 'selenium-webdriver'
require 'rspec/expectations'
require 'capybara/cucumber'

 #attr_reader :driver

BING_SEARCH_FIELD = {id: 'sb_form_q'}
BING_SEARCH_RESULTS_PAGE = {id: 'b_results'}

class BingSearch
  def initialize(driver)
   @driver = driver

  end
  
  def BingSearchPage
   @driver.get("http://www.bing.com/#")
   #visit 'http://www.bing.com/'
  end
  
  def BingSearchFor(search_text)
   @driver.find_element(BING_SEARCH_FIELD).send_keys search_text
   @driver.find_element(BING_SEARCH_FIELD).send_keys :return
  end
  
  def BingVerifySeaerchResults()
   @driver.find_element(BING_SEARCH_RESULTS_PAGE) == true
   @driver.quit    
  end
end