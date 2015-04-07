require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Crozdesk < OmniAuth::Strategies::OAuth2
      option :name, :crozdesk

      option :client_options, {
        site: "https://crozdesk.com",
        authorize_path: "/oauth/authorize"
      }

      uid do
        raw_info["id"]
      end

      info do
        {
          name: raw_info["name"],
          email: raw_info["email"],
          first_name: raw_info["first_name"],
          last_name: raw_info["last_name"],
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/users/me').parsed['user'] || {}
      end
    end
  end
end
