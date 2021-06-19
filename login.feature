Feature: User can access his account through login page
  Background:
    Given User opens home page in a browser
    And user is not logged in
    And user clicks on My account option in the header


    Scenario: Opening login page through header with correct credentials
      Given user clicks on Login option of dropdown menu
      When user enters correct email address and password in the corresponding fields
      Then user account page is open

    Scenario: Opening login page through right menu with correct credentials
      Given user clicks on Register option of dropdown menu
      And user clicks on Login option in the right menu
      When user enters correct email address and password in the corresponding fields
      Then user account page is open

    Scenario: Opening login page through header with incorrect email
      Given user clicks on Login option of dropdown menu
      When user enters incorrect email address and password in the corresponding fields
      Then message "Warning: No match for E-Mail Address and/or Password." appears

    Scenario: Opening login page through header with incorrect password
      Given user clicks on Login option of dropdown menu
      When user enters registered email address but incorrect password in the corresponding fields
      Then message "Warning: No match for E-Mail Address and/or Password." appears