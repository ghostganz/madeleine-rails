class Post < Madeleine::Rails::Model
  attr :id
  attr :body
  attr :published
  attr :title

  def initialize(args = {})
    super
  end

  def update_attributes(args)
    @title = args['title'] if args['title']
    @published = args['published'] if args['published']
    @body = args['body'] if args['body']
  end
end
