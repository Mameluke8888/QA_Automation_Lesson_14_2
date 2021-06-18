Feature: Unregistered users can create a new account


  Scenario: Registering a new user
    Given an unregistered user opens home page https://techskillacademy.net/brainbucket/index.php in a browser
    When user clicks on Register option of dropdown menu from My Account option in the header
    And user enters all required corresponding fields
    And user checks I have read and agree to the Privacy Policy checkbox
    And user clicks Continue button
    Then message "Congratulations! Your new account has been successfully created!" appears