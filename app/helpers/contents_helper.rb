module ContentsHelper
  def duration_naming(duration)
    case duration
    when 5 
      "Few stations"
    when 10
      "Hep ! Taxi !"
    when 15
      "Connection"
    when 30
      "Traffic jam"
    else 
      raise "Duration naming not implemented for #{duration}!"
    end
  end

  def kind_naming(kind)
    case kind
    when 'video' 
      "Better than TV !"
    when 'article'
      "I feel for reading"
    when 'podcast'
      "Audio bingo"
    else 
      raise "Kind naming not implemented for #{kind}!"
    end
  end

  def theme_naming(theme)
    case theme
    when 'politics' 
      "Politics"
    when 'society'
      "Society"
    when 'economics'
      "Economics"
    when 'arts' 
      "Arts"
    when 'environment'
      "Environnement"
    when 'sciences'
      "Sciences"
    when 'technology'
      "Technology"
    when 'history'
      "History"
    else 
    raise "Category naming not implemented for #{category}!"
    end
  end
end