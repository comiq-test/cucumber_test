
Given /^that I have gone to the Google page$/ do
    @browser=Watir::Browser.new :ff
    @browser.goto("www.google.com")
end

When /^I add (.*) to the search box$/ do |item|
    @browser.text_field(:name, "q").set(item)
end

And /^click the Search Button: (.*)$/ do |item|
    @browser.goto("http://en.wikipedia.org/wiki/"+ item)
end

Then /^(.*) should be mentioned in the results$/ do |item|
    @browser.title.should == item + " - Wikipedia, the free encyclopedia"
    @browser.close
end

