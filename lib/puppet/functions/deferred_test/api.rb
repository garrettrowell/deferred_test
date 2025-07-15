require 'json'

Puppet::Functions.create_function(:'deferred_test::api') do
  dispatch :api do
  end

  def api
    {
      'response' => 'i did a thing'
    }.to_json
  end
end
