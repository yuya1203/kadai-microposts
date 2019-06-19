# frozen_string_literal: true

module Fog
  module Compute
    class CloudAtCost
      class Real
        def list_tasks
          request(
            expects: [200],
            method: 'GET',
            path: '/api/v1/listtasks.php'
          )
        end
      end

      # noinspection RubyStringKeysInHashInspection
      class Mock
        def list_tasks
          response = Excon::Response.new
          response.status = 200
          response.body = {
            'status' => 'OK',
            'servers' => data[:data]
          }
          response
        end
      end
    end
  end
end
