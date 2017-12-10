Given('I send the POST verb in the endpoint /posts') do
  @send_body = ClassFieldsJson.post_json_fields
  @response_body = ApiJsonPlaceHolder.new.post(@send_body)
end

Given('I send the PUT verb in the endpoint /posts') do
  @send_body = ClassFieldsJson.post_json_fields
  @response_body = ApiJsonPlaceHolder.new.put(@send_body)
end

Given('I send the PATCH verb in the endpoint /posts to change the title parameter') do
  @send_body = ClassFieldsJson.patch_json_fields
  @response_body = ApiJsonPlaceHolder.new.patch(@send_body)
end

Given('I send the DELET verb in the endpoint /posts to delete register') do
  @response_body = ApiJsonPlaceHolder.new.delete
end
