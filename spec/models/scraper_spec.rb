require 'spec_helper'


describe Scraper do
  let(:scraper) do
    Scraper.new("http://www.nytimes.com/")
  end

  describe '.new' do
    it "will throw an error unless it receives a single argument" do
      expect { Scraper.new }.to raise_error
    end

    it "it takes a single argument" do
      expect { Scraper.new("http://www.nytimes.com/") }.to_not raise_error
    end
  end # describe '.new'

  describe '#get_hrefs' do
    # it "will return an array" do
    #   expect(scraper.get_hrefs).to be_a(Array)
    # end

    it "will return all the hrefs on a page in an array" do
      expect(scraper.get_hrefs).to include("/membercenter/feedback.html")
    end
  end # describe get_hrefs

  # describe '#get_images' do
  #   it "will return an array" do

  #   end

  # end


end
