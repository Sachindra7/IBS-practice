Feature: Test the Exercise website
   Scenario: Test the Signup functionality
   Given I navigate to Exercise-web homepage
   When I click on signup/login
   And I fill in the name
   And I fill in the email
   And I click on the Signup button
   When I select Mr.
   And I fill in the password
   And I should select Day for DOB
   And I should select Month for DOB
   And I should select Year for DOB
   And I click both checkboxes
   And I fill in the first-name for address
   And I fill in the last-name for address
   And I fill in the company name for address
   And I fill in the address
   And I fill in the address2
   And I select country
   And I fill in the State
   And I fill in the City
   And I fill in the Zipcode
   And I fill in the Mobile Number
   And I click on the Create Account button
   Then I should see account created!
