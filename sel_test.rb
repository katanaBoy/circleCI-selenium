require 'selenium-webdriver'
width = 1024
height = 728
driver = Selenium::WebDriver.for :firefox
driver.navigate.to 'http://google.com'
driver.execute_script %Q{
  window.resizeTo(#{width}, #{height});
}
driver.save_screenshot('/tmp/screenshot.png')
driver.quit



# require 'rubygems'
# require 'selenium'
#
# @selenium = Selenium::SeleniumDriver.new("localhost", 4444, "*firefox", "http://www.cnn.com", 10000);
# @selenium.start
# @selenium.open "/US/"
# @selenium.wait_for_page_to_load(60)
# @selenium.send(:sleep, 7) # Wait for Flash and other crap to load
# @selenium.capture_entire_page_screenshot('/tmp/screenshot.png', '');
# @selenium.stop
