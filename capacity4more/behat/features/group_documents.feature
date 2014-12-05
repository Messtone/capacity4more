Feature: Group Documents
  As a group member and non-member
  In order to see and search into all documents
  I need to be able to see a documents overview page
  I need to be able to switch between list and table view
  I need to be able to see a document detail page

  @api
  Scenario: Check documents list overview as an anonymous user
    Given I am an anonymous user
     When I visit the documents overview of group "Nobel Prize" in "list" view
     Then I should see the documents overview
      And I should not see the "Upload a document" link above the overview
      And I should not see the "Add Photo album" link above the overview

  @api
  Scenario: Check documents table overview as an anomynous user
    Given I am an anonymous user
     When I visit the documents overview of group "Nobel Prize" in "table" view
     Then I should see the documents overview
      And I should not see the "Upload a document" link above the overview
      And I should not see the "Add Photo album" link above the overview

  @api
  Scenario: Check documents list overview as group owner
    Given I am logged in as user "alfrednobel"
     When I visit the documents overview of group "Nobel Prize" in "list" view
     Then I should see the documents overview
      And I should see the "Upload a document" link above the overview
      And I should see the "Add Photo album" link above the overview

  @api
  Scenario: Check documents table overview as group owner
    Given I am logged in as user "alfrednobel"
     When I visit the documents overview of group "Nobel Prize" in "table" view
     Then I should see the documents overview
      And I should see the "Upload a document" link above the overview
      And I should see the "Add Photo album" link above the overview

  @api
  Scenario: Check if filters on documents overview are retained when I switch to table view style
    Given I am an anonymous user
     When I visit the filtered list view of the documents of group "Nobel Prize"
      And I switch to "table" view
     Then I should still have retained search filters

  @api @wip
  Scenario: Check document detail as an anonymous user
    Given I am an anonymous user
    When I visit the group "document" detail page "Nobel Prize ceremony"
    Then I should see the document detail page

  @api  @wip
  Scenario: Check document detail as group owner
    Given I am logged in as user "alfrednobel"
    When I visit the group "document" detail page "Nobel Prize ceremony"
    Then I should see the document detail page

