require 'fog/openstack/models/collection'

module Fog
  module OpenStack
    class Volume
      module AvailabilityZones
        def all(options = {})
          data = service.list_zones(options)
          load_response(data, 'availabilityZoneInfo')
        end
      end
    end
  end
end
