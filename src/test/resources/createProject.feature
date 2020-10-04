Feature: Project
  @Kev
  Scenario: As a user I want to create a project so that organize my task

    Given I have authentication to todo.ly
    # consumiendo el request
    When I send POST request 'api/items.json' with json
    """
    {
    "Content": "New Item"
    }
    """
    # verificar el response
    Then I expected the response code 200
    And I expected the response body is equal
    """
 {
    "Id": "EXCLUDE",
    "Content": "New Item",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "EXCLUDE",
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": "EXCLUDE",
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676070
}
    """

    And I get the property value 'Id' and save on ID_ITEM
    And I get the property value 'Content' and save on NAME_ITEM

    When I send PUT request 'api/items/ID_ITEM.json' with json
    """
  {
    "Checked": "true"
  }
    """

    # verificar el response

    Then I expected the response code 200
    And I expected the response body is equal
    """

    {
    "Id": ID_ITEM,
    "Content": "NAME_ITEM",
    "ItemType": 1,
    "Checked": true,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "EXCLUDE",
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": "EXCLUDE",
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": true,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676070
}
    """
    When I send GET request 'api/items/ID_ITEM.json' with json
    """

    """
    # verificar el response
    Then I expected the response code 200
    And I expected the response body is equal
    """

   {
    "Id": ID_ITEM,
    "Content": "NAME_ITEM",
    "ItemType": 1,
    "Checked": true,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "EXCLUDE",
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": "EXCLUDE",
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": "EXCLUDE",
    "Notes": "",
    "InHistory": true,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676070
    }

    """
    When I send DELETE request 'api/items/ID_ITEM.json' with json
    """
    """
    # verificar el response
    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
    "Id": ID_ITEM,
    "Content": NAME_ITEM,
    "ItemType": 1,
    "Checked": true,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "EXCLUDE",
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": "EXCLUDE",
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": true,
    "Notes": "",
    "InHistory": true,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676070
    }
    """

