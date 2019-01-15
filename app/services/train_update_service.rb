class TrainUpdateService

  def default(params = "&country=us")
    display_array = []
    articles = get_default(params)['articles']
    articles.each do |article|
      author = article['author']
      source_id = article['source']['id']
      source_name = article['source']['name']
      title = article['title']
      description = article['description']
      url = article['url']
      urltoimage = article['urlToImage']
      published_at = article['publishedAt']
      article_array = [author, source_id, source_name, title, description, url, urltoimage, published_at]
      new_article = Article.new(article_array)
      display_array << new_article
    end
    display_array
  end

  private

  def conn
    Faraday.new(url: "https://newsapi.org")
  end

  def request(url)
    JSON.parse(conn.get(url).body)
  end

  def get_default(params = "&country=us")
    request("/v2/top-headlines?apiKey=#{ENV['NEWS_API_KEY']}" + params)
  end

end
