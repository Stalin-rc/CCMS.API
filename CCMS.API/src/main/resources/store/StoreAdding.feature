Feature Store adding 
As a developer
I want to add Client throguth API
So that it can be available to applications 

Background:
 Given The Endpoint "http://localhost:8080/swagger-ui/index.html" is available 
@Store-adding
Scenario: Add Store
  When a post request is sent with the values "Store Inka", "SJL" , "cesar07@gmail.com", "This store is considered as one of the best in the city"
  Then a response with status 200 is recived 
  And an Client resource with the values 1, "Store Inka", "SJL" , "cesar07@gmail.com", "This store is considered as one of the best in the city" is included in response body

@Store-duplicated
Scenario: Add store with existing name
  Given a client resource with the values "Store Inka", "SJL" , "cesar07@gmail.com", "This store is considered as one of the best in the city" is already stored
  When a post request is sent with the values "Store Inka", "SJL" , "cesar07@gmail.com", "This store is considered as one of the best in the city"
  Then a response with status 400 is recived 
  And an Client resource with the values 1, "An store with te same name already exits" is included in response body
