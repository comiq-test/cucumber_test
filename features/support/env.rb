require 'watir-webdriver'

if ENV['HEADLESS']
  require 'headless'
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
end

#After do |scenario|
  #headless. 'screenshot.png'
  #browser.screenshot.save 'screenshot.png'
  #embed 'screenshot.png', 'image/png'
#end
