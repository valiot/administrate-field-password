require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Password < Administrate::Field::Base
      class Engine < ::Rails::Engine
      end

      def self.searchable?
        false
      end

      def truncate
        pretty_data.to_s[0...6]
      end

      private

      def pretty_data
        data.gsub(/./, "•") unless data.nil?
      end
    end
  end
end
