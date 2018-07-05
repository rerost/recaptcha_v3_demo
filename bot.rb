require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.get "http://localhost:3000/recaptcha_v3.html"
sleep(5)
driver.find_element(id: "submit").click
sleep(5)
