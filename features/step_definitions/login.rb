
Given /^that user has gone to the login page$/ do
    @browser=Watir::Browser.new :ff
    @browser.goto("http://localhost:7272/")
end

When /^user "(.*)" logs in with password "(.*)"$/ do |name, password|
    @browser.text_field(:id, "username_field").set(name)
    @browser.text_field(:id, "password_field").set(password)
    @browser.button(:id, "login_button").click
end

Then /^(.*) should be open$/ do |page|
    @browser.title.should == page
    @browser.close
end

