# Class ApiJsonPlaceHolder
class ApiJsonPlaceHolder
  include HTTParty

  base_uri ENVIRONMENT['api']
  format :json

  def initialize
    @http_headers = {
      'Content-Type' => 'application/json; charset=UTF-8',
      'Connection' => 'keep-alive'
    }
  end

  def post(body)
    self.class.post('/posts', body: body.to_json, headers: @http_headers)
  end

  def put(body)
    self.class.put('/posts/1', body: body.to_json, headers: @http_headers)
  end

  def patch(body)
    self.class.patch('/posts/1', body: body.to_json, headers: @http_headers)
  end

  def delete
    self.class.delete('/posts/1', headers: @http_headers)
  end
end
