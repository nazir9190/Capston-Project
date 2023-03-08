Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'nazir.sirat@tekschoo.us' and password 'Serat95608!'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  @TCACC 01
  Scenario: Verify User can update Profile Information
    And User update Name 'Seerat' and Phone '9166656488'
    And User click on Update button
    Then user profile information should be updated

  @TCACC2
  Scenario: Verify User can Update password
    And User enter below information
      | previousPassword | newPassword | confirmPassword |
      | Dferat@9561      | Dferat@956  | Dferat@956      |
    And User click on Change Password button
    Then a message should be displayed 'Password Updated Successfully'

  @TCACC3
  Scenario: Verify User can add a payment method
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 4568778954214455 | Sirat      |               4 |           2024 |          524 |
    And User click on Add your card button
    Then a message should be displayed ‘Payment Method added successfully’

  @TCACC4
  Scenario: Verify User can edit Debit or Credit card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 4568778954214456 | Seraat     |               5 |           2025 |          562 |
    And user click on Update Your Card button
    Then a message should be displayed ‘Payment Method updated Successfully’

  @TCACC5
  Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    And User click on remove option of card section
    Then payment details should be removed

  @TCACC6
  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country       | fullName | phoneNumber | streetAddress    | apt | city       | state      | zipCode |
      | United States | Nazir    |  9166663654 | 4730 Marconi ave |  38 | carmichael | California |   95608 |
    And User click Add Your Address button
    Then a message should be displayed ‘Address Added Successfully’

  @TCACC7
  Scenario: Verify User can edit an Address added on account
    And User click on edit address option
    And user fill new updated address form with below information
      | country       | fullName | phoneNumber | streetAddress | apt | city    | state | zipCode |
      | United States | Serat    |  9182348444 | 1234 Mars Ave  |  5 | Sac Hop | Ohio  |   66754 |
    And User click update Your Address button
    Then a message should be displayed ‘Address Updated Successfully’

  @TCACC8
  Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of Address section
    Then Address details should be removed
