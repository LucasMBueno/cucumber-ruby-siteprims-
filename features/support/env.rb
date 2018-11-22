require 'capybara/cucumber'
require 'selenium-webdriver'


Capybara.configure do |config|
    #selenium  -- firefox
    #selenium_chrome -- chrome
    #selenium_chrome_healess -- sem tela aberta, segundo plano
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5


end