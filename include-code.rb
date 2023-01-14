require 'net/http'
require 'uri'

module Jekyll
  module Tags
    class IncludeCodeTag < Liquid::Tag
      def initialize(tag_name, text, tokens)
        super
        params = text.split("!")
        uri = URI.parse(params[0])
        from = params[1].to_i
        to = params[2].to_i
        response = Net::HTTP.get_response(uri)
        @body = response.body.lines[Range.new(from, to)]
      end

      def render(context)
        @body
      end
    end
  end
end

Liquid::Template.register_tag("include_code", Jekyll::Tags::IncludeCodeTag)
