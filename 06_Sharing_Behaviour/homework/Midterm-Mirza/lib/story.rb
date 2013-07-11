class Story
  attr_accessor :url, :section, :title, :abstract, :published_date

  def initialize(url, section, title, abstract, published_date)
	@url = url    
	@section = section
	@title = title
    @abstract = abstract
    @published_date = published_date
  end
end
