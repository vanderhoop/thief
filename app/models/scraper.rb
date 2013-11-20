require 'httparty'

class Scraper
  attr_accessor :url, :hrefs

  def initialize(url)
    @url = url
    @hrefs = []
  end

  def hrefs
    @hrefs
  end

  def url
    @url
  end

  # pops every link from a given page into an array
  # and returns that array
  def get_hrefs
    # this will grab all the html from the url that
    # the user created the scraper with
    url_to_scrape = HTTParty.get(self.url)
    # nokogiri turns everything from HTTParty into nodes.
    nodes = Nokogiri::HTML(url_to_scrape)
    nodes.css('a').each do |a|
      self.hrefs << a['href']
    end
    self.hrefs
  end



end
