module Jekyll
  module AssetFilter
    def format_date(date)
      if date.include? ' - '
        start_end_date = date.split(' - ')
        start_date = format_date(start_end_date[0])
        end_date = format_date(start_end_date[1])
        if start_date == end_date
          return start_date
        else
          return start_date + ' - ' + end_date
        end
      end

      date_parts = date.split('/')
      if date_parts.count > 2
        # There is a day do remove it
        month = date_parts[0]
        year = make_year_four_chars(date_parts[2])

        return "#{month}/#{year}"
      end

      return date
    end

    def make_year_four_chars(year)
      if year.length < 4
        if year.to_i < 60
          year = '20' + year
        else
          year = '19' + year
        end
      end

      return year
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
