Then('will be returned status code {string}') do |status_code|
  expect(@response_body.code.to_s).to eq status_code
end

Then('the posts will be created successfully') do
  expect(@response_body['title']).to eq(@send_body['title'])
  expect(@response_body['body']).to eq(@send_body['body'])
  expect(@response_body['userId']).to eq(@send_body['userId'])
end

Then('the posts will be update successfully') do
  expect(@response_body['title']).to eq(@send_body['title'])
  expect(@response_body['body']).to eq(@send_body['body'])
  expect(@response_body['userId']).to eq(@send_body['userId'])
  expect(@response_body['id']).to eq 1
end

Then('the title of the post is updated successfully') do
  expect(@response_body['title']).to eq(@send_body['title'])
end

Then('the posts will be deleted successfully') do
  expect(@response_body.parsed_response).to eq({})
end
