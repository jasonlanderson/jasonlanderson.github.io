module Jekyll
  module AssetFilter
    def active_if_match(input, path)
      return input == path ? 'class="active"' : ''
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
