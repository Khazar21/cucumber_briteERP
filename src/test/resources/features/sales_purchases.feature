Feature: Invoicing Page

  Background:
    Given user is in invoicing page logged as a Manager
    Then system should display Customer Invoices page
		#Khazar

  Scenario: Search box default value
    Then user should see Search... keyword in a searchbox by default

  Scenario: page's default invoices view
    Then user should see invoices listed as list by default

  Scenario: kanban button functionality
    When user clicks on kanban view button
    Then invoices should be listed as kanban



	 #Bedia

  Scenario: Search box default value
    When user click on "Purchase Documents"
    When user click on "Vendor Bills"
    Then user should see Search... keyword in a searchbox by default

  Scenario:  vendorBills  listed default
    When user click on "Purchase Documents"
    When user click on "Vendor Bills"
    Then user should see Vendor Bills listed as list by default

  Scenario: kanban button functionality
    When user click on "Purchase Documents"
    When user click on "Vendor Bills"
    And user click on Vendor kanban view button
    Then Vendor Bills should be listed as kanban


  Scenario: Vendor Bills are listed in calendar
    When user click on "Purchase Documents"
    When user click on "Vendor Bills"
    And user click on Vendor Calendar view button
    Then calendar button should display selected

  Scenario: Draft Credit Note displayed
    When user click on "Purchase Documents"
    When user click on "Vendor Credit Note"
    And user click on Create button
    Then Draft Credit Note should be displayed

  Scenario: 'Search More' and 'Credit and Edit' options are displayed inside the dropdown
    When user click on "Purchase Documents"
    When user click on "Vendor Credit Note"
    And user click on Create button
    When user click on Vendor
    And user choose any vendor dropdown
    When click on Add an item
    Then Search More and Credit and Edit options are displayed



  Scenario Outline: product information filled automatically
    When user click on "Purchase Documents"
    When user click on "Vendor Credit Note"
    And user click on Create button
    When user click on Vendor
    And user choose any vendor dropdown
    When click on Add an item
    When user choose "<product>"
    Then user should see all product information "<product>","<Description>" ,"<Quantity>" ,"<Unit Price>" ,"<Amount>"  accordingly:
    Examples:
      | product     | Description               | Quantity | Unit Price | Amount   |
      | Yellow Cake | [36354434232] Yellow Cake | 1.000    | 1.00       | $ 1.00   |
      | Yogurt      | [36354434232] Yogurt      | 1.000    | 1.00       | $ 1.00   |
      | Ice Cream   | [1] Ice Cream             | 1.000    | 100.00     | $ 100.00 |


  Scenario: product information can be edited
    When user click on "Purchase Documents"
    When user click on "Vendor Credit Note"
    And user click on Create button
    When user click on Vendor
    And user choose any vendor dropdown
    When click on Add an item
    When user choose Computer Case product
    When user delete delete quantity
    And user edit quantity by entering 50
    Then user should see new value is displayed


  Scenario: clicking delete button

    When user click on "Purchase Documents"
    When user click on "Vendor Credit Note"
    And user click on Create button
    When user click on Vendor
    And user choose any vendor dropdown
    When click on Add an item
    When user choose Computer Case product
    And user click delete button
    Then all product information returns the blank


  Scenario: Displaying payment options
    When user click on "Purchase Documents"
    When user click on "Purchases payments"
    And user click on Create button
    Then user should see payment options

  Scenario:Displaying payment Date
    When user click on "Purchase Documents"
    When user click on "Purchases payments"
    And user click on Create button
    Then user should see current payment Date should display

	Scenario: page's default invoices view
		Then user should see invoices listed as list by default


	Scenario: kanban button functionality
		When user clicks on kanban view button
	    Then invoices should be listed as kanban
  Scenario: Verifying Error message displayed
    When user click on "Purchase Documents"
    When user click on "Purchases payments"
    When  user click on Create button
    When user click on Internal Transfer  as a payment type
    And user click on Discard button
    Then system should throw warning message




	    #Aysegul

	Scenario: Search box by default in vendors page.
		Given user clicks on Master Data
		When user clicks on Vendors button
		Then user should see Search... keyword is displayed

	Scenario: Vendors page, Create button is clickable.
			Given user clicks on Master Data
			When user clicks on Vendors button
			Then user should see Create button is clickable


	Scenario:Vendors page, Import button is clickable.
		Given user clicks on Master Data
		When user clicks on Vendors button
		Then user should see Import button is clickable


	Scenario: Kanban format button invoices is displayed.
		Given user clicks on Master Data
		When user clicks on Vendors button
		Then user should see Kanban format button invoices is displayed


	Scenario:Vendors are listed as List format type by default.
		Given user clicks on Master Data
		When user clicks on Vendors button
		Then user should see Vendors are listed as List format type by default.


	Scenario:Vendors can create an account
		Given user clicks on Master Data
		When user clicks on Vendors button
		Then user should be create an account


	Scenario:Search box by default in Purchasable Products page
		Given user clicks on Master Data
		When user clicks on Purchasable Products button
		Then user should see Search... keyword is displayed


	Scenario: List of the items sorted by ascending by clicking List format button,
		Given user clicks on Master Data
		When user clicks on Purchasable Products button
		Then user should see Purchasable Products are listed as List format type by default.


	Scenario: Product's pictures can appear clicking Kanban format button by vendors
		Given user clicks on Master Data
		When user clicks on Purchasable Products button
		Then user should see Product's pictures can appear clicking Kanban format button

	Scenario: Load File format button clicking , vendors can be import.
		Given user clicks on Master Data
		When user clicks on Purchasable Products button
		Then user should see Purchasable Products are clicking Load File can be import










