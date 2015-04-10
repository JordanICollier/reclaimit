class Post < Reclaimit::Fetcher
  attr_reader :num_comments

  def initialize(data)
    @num_comments = data["data"]["num_comments"]
  end

  # grab the first page posts
  # def posts
  #   0.upto(posts_length-1) do |i|
  #     @posts << subreddit[1]["data"]["children"][i]
  #   end
  # end
  #
  # def posts_length
  #   subreddit[1]["data"]["children"].length
  # end
  #
  # # grab the first layer of comments
  # def first_layer_comments
  #   0.upto(first_layer_comments_length-1) do |i|
  #     @comments << subreddit[1]["data"]["children"][i]["data"]["body"]
  #   end
  # end
  #
  # def first_layer_comments_length
  #   subreddit[1]["data"]["children"].length
  # end

end
