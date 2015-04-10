class Post < Reclaimit::Fetcher
  attr_reader :num_comments

  def initialize(data)
    @approved_by = data["data"]["approved_by"]
    @archived = data["data"]["archived"]
    @author = data["data"]["author"]
    @author_flair_css_class = data["data"]["author_flair_css_class"]
    @author_flair_text = data["data"]["author_flair_text"]
    @banned_by = data["data"]["banned_by"]
    @clicked = data["data"]["clicked"]
    @created = data["data"]["created"]
    @created_utc = data["data"]["created_utc"]
    @distinguished = data["data"]["distinguished"]
    @domain = data["data"]["domain"]
    @downs = data["data"]["downs"]
    @edited = data["data"]["edited"]
    @gilded = data["data"]["gilded"]
    @hidden = data["data"]["hidden"]
    @id = data["data"]["id"]
    @is_self = data["data"]["is_self"]
    @likes = data["data"]["likes"]
    @link_flair_css_class = data["data"]["link_flair_css_class"]
    @link_flair_text = data["data"]["link_flair_text"]
    @media = data["data"]["media"]
    @media_embed = data["data"]["media_embed"]
    @mod_reports = data["data"]["mod_reports"]
    @name = data["data"]["name"]
    @num_comments = data["data"]["num_comments"]
    @num_reports = data["data"]["num_reports"]
    @over_18 = data["data"]["over_18"]
    @permalink = data["data"]["permalink"]
    @report_reasons = data["data"]["report_reasons"]
    @saved = data["data"]["saved"]
    @score = data["data"]["score"]
    @secure_media = data["data"]["secure_media"]
    @secure_media_embed = data["data"]["secure_media_embed"]
    @selftext = data["data"]["selftext"]
    @selftext_html = data["data"]["selftext_html"]
    @stickied = data["data"]["stickied"]
    @subreddit = data["data"]["subreddit"]
    @subreddit_id = data["data"]["subreddit_id"]
    @thumbnail = data["data"]["thumbnail"]
    @title = data["data"]["title"]
    @ups = data["data"]["ups"]
    @url = data["data"]["url"]
    @user_reports = data["data"]["user_reports"]
    @visited = data["data"]["visited"]
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
