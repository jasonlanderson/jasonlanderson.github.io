module Jekyll
  module AssetFilter
    def format_link(input)
      input = input.class == Array ? input[0] : input
      return input.include?('http') ? input : "assets/files/" + input
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
