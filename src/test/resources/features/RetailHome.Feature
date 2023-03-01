Feature: Retail Home Page

  @retailHomePage
  Scenario Outline: Verify department sidebar option
    Given: User is one retail website
    When: User click on All section

    And User on <department>
    Then below options are present in department
      | <optionOne | <optionTwo |

    Examples: 
      | department     | optionOne                       | optionTwo        |                    |
      | 'Electornices' | TV&Video                        | Video Games      |                    |
      | 'Computer'     | Accessories                     | Networking       | Networking         |
      | 'Smart Home'   | Smart Home Lightning            | Plugs & Outlets  |                    |
      | 'Sports'       | Athetic Clothihg                |                  | Exercise & Fitness |
      | 'Automative'   | Atutomative Parts & Accessories | Motorcycle&Power |                    |
