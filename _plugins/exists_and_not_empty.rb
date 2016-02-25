module Jekyll
  module AssetFilter
    def exists_and_not_empty(input)
      return (input and input != "")
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
