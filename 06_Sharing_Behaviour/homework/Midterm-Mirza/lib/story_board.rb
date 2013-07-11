class StoryBoard
  @@stories = []

  def self.add_story(story)
    @@stories << story
  end

  def self.stories
    @@stories.map do |story|
      "Url: (#{story.url}), Section: (#{story.section}), Story: (#{story.title}), Abstract: (#{story.abstract}), Published_Date: (#{story.published_date})"
    end
  end
end
