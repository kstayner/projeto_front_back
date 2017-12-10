Feature: Verify the REST API
  As a QA
  I want to verify the REST API
  In order to show that I know how to use httparty

  @post @service @all
  Scenario: Send POST verb in the endpoint /posts
  Given I send the POST verb in the endpoint /posts
  Then will be returned status code "201"
  Then the posts will be created successfully

  @put @service @all
  Scenario: Send the PUT verb in the endpoint posts/1
  Given I send the PUT verb in the endpoint /posts
  Then will be returned status code "200"
  Then the posts will be update successfully

  @patch @service @all
  Scenario: Send the PATCH verb in the endpoint posts/1 to change the title parameter
  Given I send the PATCH verb in the endpoint /posts to change the title parameter
  Then will be returned status code "200"
  Then the title of the post is updated successfully

  @delete @service @all
  Scenario: Send the DELET verb in the endpoint posts/1 to delete register
  Given I send the DELET verb in the endpoint /posts to delete register
  Then will be returned status code "200"
  Then the posts will be deleted successfully
