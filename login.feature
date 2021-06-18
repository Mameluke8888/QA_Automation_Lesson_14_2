Feature: User can access his account through login page
  Background: User opens home page https://techskillacademy.net/brainbucket/index.php


    Scenario: Opening login page through header with correct credentials
      Given user is not logged in
      When user clicks on My account option in the header
      And user clicks on Login option of dropdown menu
      And user enters correct email address and password in the corresponding fields
      Then user account page is open

    Scenario: Opening login page through right menu with correct credentials
      Given user is not logged in
      When user clicks on My account option in the header
      And user clicks on Register option of dropdown menu
      And user clicks on Login option in the right menu
      And user enters correct email address and password in the corresponding fields
      Then user account page is open

    Scenario: Opening login page through header with incorrect email
      Given user is not logged in
      When user clicks on My account option in the header
      And user clicks on Login option of dropdown menu
      And user enters incorrect email address and password in the corresponding fields
      Then message "Warning: No match for E-Mail Address and/or Password." appears

    Scenario: Opening login page through header with incorrect password
      Given user is not logged in
      When user clicks on My account option in the header
      And user clicks on Login option of dropdown menu
      And user enters registered email address but incorrect password in the corresponding fields
      Then message "Warning: No match for E-Mail Address and/or Password." appears