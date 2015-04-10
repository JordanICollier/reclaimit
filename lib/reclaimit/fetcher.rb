require 'faraday'
require 'json'
require 'dotenv'
Dotenv.load

module Reclaimit

  class Fetcher

    attr_accessor :comments

    def initialize(subreddit)
      @reddit = Faraday.new(:url => 'https://www.reddit.com') do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      @comments = []
      @subreddit = subreddit
    end

    def subreddit
      response = @reddit.get do |req|
        req.url "/r/#{@subreddit}.json"
        req.headers['Content-Type'] = 'application/json'
      end

      JSON.parse(response.body)["data"]["children"].map do |post_data|
        Post.new(post_data)
      end
    end

    # /r/news/search.json?q=#{@searchterm}&restrict_sr=on&sort=relevance&t=week

  end

end
