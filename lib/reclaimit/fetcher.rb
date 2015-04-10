require 'faraday'
require 'json'
require 'dotenv'
Dotenv.load

module Reclaimit

  class Reclaimit

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
        req.headers['Reddit-Token'] = ENV['REDDIT_TOKEN']
        req.headers['Content-Type'] = 'application/json'
      end

      JSON.parse(response.body)
    end

    # def first_layer
    #   0.upto(first_layer_length-1) do |i|
    #     @comments << subreddit[1]["data"]["children"][i]["data"]["body"]
    #   end
    # end
    #
    # def first_layer_length
    #   subreddit[1]["data"]["children"].length
    # end

  end

end
