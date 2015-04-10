class Post < Reclaimit::Fetcher
  attr_reader :num_comments

  def initialize(data)
    @domain = data["data"]["domain"]
    @banned_by = data["data"]["banned_by"]
    @media_embed = data["data"]["media_embed"]
    @subreddit = data["data"]["subreddit"]
    @selftext_html = data["data"]["selftext_html"]
    @selftext = data["data"]["selftext"]
    @likes = data["data"]["likes"]
    @user_reports = data["data"]["user_reports"]
    @secure_media = data["data"]["secure_media"]
    @link_flair_text = data["data"]["link_flair_text"]
    @id = data["data"]["id"]
    @gilded = data["data"]["gilded"]
    @archived = data["data"]["archived"]
    @clicked = data["data"]["clicked"]
    @report_reasons = data["data"]["report_reasons"]
    @author = data["data"]["author"]
    @num_comments = data["data"]["num_comments"]
    @score = data["data"]["score"]
    @approved_by = data["data"]["approved_by"]
    @over_18 = data["data"]["over_18"]
    @hidden = data["data"]["hidden"]
    @thumbnail = data["data"]["thumbnail"]
    @subreddit_id = data["data"]["subreddit_id"]
    @edited = data["data"]["edited"]
    @link_flair_css_class = data["data"]["link_flair_css_class"]
    @author_flair_css_class = data["data"]["author_flair_css_class"]
    @downs = data["data"]["downs"]
    @secure_media_embed = data["data"]["secure_media_embed"]
    @saved = data["data"]["saved"]
    @stickied = data["data"]["stickied"]
    @is_self = data["data"]["is_self"]
    @permalink = data["data"]["permalink"]
    @name = data["data"]["name"]
    @created = data["data"]["created"]
    @url = data["data"]["url"]
    @author_flair_text = data["data"]["author_flair_text"]
    @title = data["data"]["title"]
    @created_utc = data["data"]["created_utc"]
    @distinguished = data["data"]["distinguished"]
    @media = data["data"]["media"]
    @mod_reports = data["data"]["mod_reports"]
    @visited = data["data"]["visited"]
    @num_reports = data["data"]["num_reports"]
    @ups = data["data"]["ups"]
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
