Feature: Data driven example

Scenario: Withdraw fixed amount of $50
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $50
   Then I should receive $50 cash
         And the balance of my account should be $450

Scenario: Withdraw fixed amount of $100
   Given I have $300 in my account
   When I choose to withdraw the fixed amount of $100
   Then I should receive $100 cash
         And the balance of my account should be $200

Scenario: Withdraw fixed amount of $20
   Given I have $200 in my account
   When I choose to withdraw the fixed amount of $20
   Then I should receive $20 cash
         And the balance of my account should be $180

Scenario Outline: Withdraw fixed amount of $20
   Given I have <Balance> in my account
   When I choose to withdraw the fixed amount of <Amount>
   Then I should receive <Amount> cash
         And the balance of my account should be <Remaining>

Examples:
	| Balance | Amount | Remaining    |
	| $500     | $50   | $450         |
	| $500     | $100  | $400         |
	| $500     | $200  | $300         |
