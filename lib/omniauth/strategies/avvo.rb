require 'omniauth/strategies/oauth2'
require 'json'

module OmniAuth
  module Strategies
    class Avvo < OmniAuth::Strategies::OAuth2
      option :name, "avvo"
      option :client_options, {
        :site => "https://api.avvo.com", 
        :authorize_url => '/api/2/oauth2/authorize', 
        :token_url => '/api/2/oauth2/authorize',
        :ssl => {
          :verify => false
        }
      }
      option :authorize_options, [:scope, :state]

      uid do
        raw_info['id']
      end

      info do 
        {
          :name => raw_info['friendly_name'],
          :email => raw_info['email_address'],
          :permissions => raw_info['permissions'],
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        @raw_info ||= begin
          access_token.options[:header_format] = "OAuth %s"
          json = access_token.get('/api/2/users/me').body
          user_data = JSON.parse(json) || {} rescue {}
          user_data["user"] || {}
        end
      end
    end
  end
end

