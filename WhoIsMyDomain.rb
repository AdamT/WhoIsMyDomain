require 'rubygems'
require 'whois'

class WhoIsMyDomain

  def initialize
    @fav_names = %w(one two)
    @fav_extensions = %w(.com .co .it .in .us .is .me)
    @our_urls = []
  end
  
  def combine_names_extensions
    @fav_names.each do |name_first|
      @fav_names.each do |name_second|
        @fav_extensions.each do |ext|
          @our_urls << name_first + name_second + ext #unless name_first == name_second
        end
      end
    end
  end
  
  def print_all_urls
    puts @our_urls
  end
  
  def check_domains
    @our_urls.each do |url|
      r = Whois.whois(url)
      puts url + ": is available." if r.available?
    end
  end
end

run_me = WhoIsMyDomain.new
run_me.combine_names_extensions
#run_me.print_all_urls
run_me.check_domains