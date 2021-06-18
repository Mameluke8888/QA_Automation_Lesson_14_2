Feature: Users can get an estimate of a delivery cost for an item(s)
  Background:
    Given a user opens home page https://techskillacademy.net/brainbucket/index.php in a browser
    And user selects product(s) s/he would like to buy using navigation bar and dropdown menus
    And user puts product(s) s/he would like to buy in Cart


  Scenario: Checking the estimate of the delivery cost through Cart
    Given user has product(s) s/he would like to buy in Cart
    When user clicks on View Cart link from dropdown menu in Cart (button with # of items in right top corner)
    And user opens a dropdown section by clicking Estimate Shipping & Taxes link
    And user selects country from dropdown list
    And user selects region/state from dropdown list
    And user types in post code
    And user clicks Get Quotes button
    Then popup window with all available delivery options and costs appears
