# ClassFieldsJson
class ClassFieldsJson
  def self.post_json_fields
    fields_json = YAML.load_file('./fixtures/templates/json_data.yml')['posts'].dup
    fields_json['title'] = 'teste string title'
    fields_json['body'] = 'teste string body'
    fields_json['userId'] = 1
    fields_json
  end

  def self.patch_json_fields
    fields_json = YAML.load_file('./fixtures/templates/json_data.yml')['patch'].dup
    fields_json['title'] = 'teste string title'
    fields_json
  end
end
