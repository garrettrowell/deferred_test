# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include deferred_test
class deferred_test {
  $response = { 'response_string' => Deferred('deferred_test::api') }

  $response_result = stdlib::deferrable_epp('deferred_test/api_response.epp', $response)

  echo { 'API debug':
    message => $response_result,
  }
}
