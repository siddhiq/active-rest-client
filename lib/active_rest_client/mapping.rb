module ActiveRestClient
  module Mapping

    module ClassMethods
      @@_calls = {}

      def get(name, url, options = {})
        @@_calls[name] = {name:name, url:url, method: :get, options:options}
      end

      def put(name, url, options = {})
        @@_calls[name] = {name:name, url:url, method: :put, options:options}
      end

      def post(name, url, options = {})
        @@_calls[name] = {name:name, url:url, method: :post, options:options}
      end

      def delete(name, url, options = {})
        @@_calls[name] = {name:name, url:url, method: :delete, options:options}
      end

      def _calls
        @@_calls
      end

      def _mapped_method(name)
        @@_calls[name]
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

  end
end
