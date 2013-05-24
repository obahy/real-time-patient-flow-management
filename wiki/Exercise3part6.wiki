Create the Add To Campaign Next Year interaction set:
As you can see in Design, the interaction set that you have just created is still marked as invalid. This error occurs because the Has not purchased a policy filter references the PolicyPurchased event definition, which is not used directly in any interaction set. Because there are no interaction sets to respond to an incoming instance of the PolicyPurchased event, WebSphere Business Events does not record incoming instances of the PolicyPurchased event. Therefore, any filters that reference the PolicyPurchased event are not evaluated correctly, which is the reason why the Add To Campaign interaction set is still marked as invalid.

You now create an interaction set, Add To Campaign Next Year, which responds to an incoming instance of the PolicyPurchased event. In this exercise, the Add To Campaign Next Year interaction set does not send out any actions. In Exercise 4, you modify this interaction set so that it sends out the AddToCampaign action after an 11 month delay (that is, one month before the purchased policy expires).

Create a new interaction set called Add To Campaign Next Year.
In the interaction set, select the PolicyPurchased event. Do not select any actions or filters.
Define the context relationship of the interaction set as Car.Registration (the same as context relationship of the Add To Campaign interaction set).
Your changes are saved automatically. Check that the assets you have updated are valid.
The interaction set, which was previously displaying icons that indicated that the interaction set was invalid, is now valid.