Feature Client adding 
As a developer
I want to add Client throguth API
So that it can be available to applications 

Background:
 Given The Endpoint "http://localhost:8080/swagger-ui/index.html" is available 
@Client-adding
Scenario: Add client
  When a post request is sent with the values "Cesar Avendaño", "cesar07@gmail.com" , 924984678
  Then a response with status 200 is recived 
  And an Client resource with the values 1, "Cesar Avendaño", "cesar07@gmail.com" , 924984678 is included in response body

@Client-duplicated
Scenario: Add client with existing email
  Given a client resource with the values "Cesar Avendaño", "cesar07@gmail.com" , 924984678 is already store
  When a post request is sent with the values "Cesar Avendaño", "cesar07@gmail.com" , 924984678
  Then a response with status 400 is recived 
  And an Client resource with the values 1, "A client with te same email already exits" is included in response body
