Feature: Reporting metadata

Scenario: Sends a handled exception which includes custom metadata added in a notify callback
    When I run "MetadataScenario"
    Then I should receive a request
    And the request is a valid for the error reporting API
    And the event "metaData.Custom.foo" equals "Hello World!"

Scenario: Add nested null value to metadata tab
    When I run "MetadataNestedNullScenario"
    Then I should receive a request
    And the request is a valid for the error reporting API
