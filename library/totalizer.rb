
class Totalizer

    def initialize(urls)
      @urls = urls
    end
  
    def calculate(unique: false, order: :desc)
      sorted = sort(order)
  
      @urls
        .reduce({}) do |ac, url|
          ac[url.path] = (ac[url.path] || []) + [url.ip]
          ac
        end
        .map  { |k, v| [k, unique ? v.uniq.count : v.count] }
        .sort { |a, b| sorted*a[1] <=> sorted*b[1] }
    end
  
  
    private
    def sort(order)
      case order
      when :asc
        1
      when :desc
        -1
      else
        raise ArgumentError("Order param must be :asc or :desc")
      end
    end
  
  end
  