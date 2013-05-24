Add the Has not purchased a policy filter to the Add To Campaign interaction set
So that the Add To Campaign interaction set evaluates the Has not purchased a policy filter when processing an instance of the WebsiteQuoteRequest event, add a reference to the Has not purchased a policy filter from the Add To Campaign interaction set.

Click the Add To Campaign interaction set to open it in the editor.
Because you set the context relationship reference when the intermediate object was called RequestDetails, when you changed the organization of the intermediate objects, you broke the context relationship reference in the interaction set. The context relationship RequestDetails.Registration no longer exists. In the interaction set editor, click the menu next to the label Related by, then click Define context relationship for interaction set. A list of available fields is displayed. Click Car, then click Registration.
In the interaction set editor, click the menu next to the label If, then click Add another filter. A list of the available filters is displayed.
Click New Folder, then click Has not purchased a policy.
A reference to the Has not purchased a policy filter is added to the Add To Campaign interaction set.