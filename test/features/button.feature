# language: en
Feature: Buttons locators and events

  @tag
  Scenario: Button clicking
    #Given the frame "SwingSet" is visible
    #  And the toolbar button "#2" is selected
    #  And the tab "Button Demo" is visible
    Given the tab "Buttons" is selected
    When I click the button "One"
    When I click the button "Two"
    When I click the button "Three!"
