module Jekyll
  module AssetFilter
    def get_first_array_val(input)
      return input.class == Array ? input[0] : input
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
