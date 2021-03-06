Feature: Locations Details 
      As an allergy sufferer, i want to know more information about
      the allergen and what each level actually stands for.    
      
Background: 

@javascript
Scenario: I should be able to click on an allergen and key main points about allergen
    Given I am on the landing page
    And my location is set to "Berkeley"
	And I press on the text "Grass"
	Then I should see "What it is"
	Then I should see "What to watch out for"
	Then I should see "What to do"

@javascript
Scenario: I should be able to click on an allergen and see more information about Grass
    Given I am on the landing page
    And my location is set to "Berkeley"
	And I press on the text "Grass"
	Then I should see "Grass produces pollen that affects outdoor allergies. It’s also easily brought indoors by wind, people and pets."
	And I should not see "Ragweed is a member of the daisy family with tiny yellow-green flowers that produce vast amounts of pollen – about a "
	
@javascript
Scenario: I should be able to click on an allergen and go to a different page and not see the details
    Given I am on the landing page
    And my location is set to "Berkeley"
	Then I press on the text "Grass"
	And my location is set to "Fremont"
	And I should not see "Grass produces pollen that affects outdoor allergies. It’s also easily brought indoors by wind, people and pets."

  
@javascript
Scenario: I should be able to click on an allergen and see more information about Grass
    Given I am on the landing page
    And my location is set to "Berkeley"
	And I press on the text "Tree"
	Then I should see "Trees produce light, dry pollen that can be carried by the wind for miles – one of the many reasons why they wreak havoc on your allergies."
	
@javascript
Scenario: I should be able to click on a weather and see more details
    Given I am on the landing page
    And my location is set to "Berkeley"
	And I press on the text "Wind"
	Then I should see "Wind blows pollen into the air, causing hay fever. If you have pollen allergies, shut the windows and stay indoors on windy days."
  
@javascript
Scenario: I should be able to see where the data is taken from. 
    Given I am on the landing page
    Then I should not see "Data from AccuWeather"
    And my location is set to "Berkeley"
	Then I should see "Data from AccuWeather"


  
  