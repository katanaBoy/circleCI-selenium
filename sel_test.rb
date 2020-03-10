require 'selenium-webdriver'
require 'pathname'

width = 1024
height = 728
driver = Selenium::WebDriver.for :remote, url: "http://localhost:4444/wd/hub", desired_capabilities: :chrome
driver.navigate.to 'http://google.com'
driver.execute_script %Q{
  window.resizeTo(#{width}, #{height});
}
pn = "/tmp/screenshot.png"
driver.save_screenshot(pn)
driver.quit

#pc = Pathname.new("/usr/bin/ruby")

res = File.exist?(pc)

puts(res)

# require 'rubygems'
# require 'selenium'
#
# @selenium = Selenium::SeleniumDriver.new("localhost", 4444, "*chrome", "http://www.cnn.com", 10000);
# @selenium.start
# @selenium.open "/US/"
# @selenium.wait_for_page_to_load(60)
# @selenium.send(:sleep, 7) # Wait for Flash and other crap to load
# @selenium.capture_entire_page_screenshot('/tmp/screenshot.png', '');
# @selenium.stop
