module ActionController
  module Routing #:nodoc:
    class RouteSet #:nodoc:
      alias_method :draw_without_fixtures_routes, :draw
      def draw
        draw_without_fixtures_routes do |map|
          map.fixtures 'fixtures.:format', :controller => 'fixtures', :action => 'index'
          map.fixtures 'fixtures/:fixturename.:format', :controller => 'fixtures', :action => 'fixture'
          yield map
        end
      end
    end
  end
end
