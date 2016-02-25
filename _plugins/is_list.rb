module Jekyll
  module AssetFilter
    def is_list(input)
      return (input.class == Array and input.size > 1)
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
