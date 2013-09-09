Feature:
    When I go to the Google search page, and search for an item, I expect to see 
    some reference to that item in the result summary.
    
Background: Go to Google page
    Given that I have gone to the Google page
    
Scenario:
    When I add cats to the search box
    And click the Search Button: cat
    Then Cat should be mentioned in the results

Scenario:
    When I add dogs to the search box
    And click the Search Button: dog
    Then Dog should be mentioned in the results
