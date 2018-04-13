module ContentsHelper
  def duration_naming(duration)
    case duration
    when 5 
      "Trois stations"
    when 10
      "Taxi !"
    when 15
      "Correspondance"
    when 30
      "Transsibérien"
    else 
      raise "Duration naming not implemented for #{duration}!"
    end
  end

  def kind_naming(kind)
    case kind
    when 'video' 
      "Mieux que la télé !"
    when 'article'
      "Où sont mes lunettes ?"
    when 'podcast'
      "Un bon pote-cast"
    else 
      raise "Kind naming not implemented for #{kind}!"
    end
  end

  def theme_naming(theme)
    case theme
    when 'politics' 
      "Politique"
    when 'society'
      "Société"
    when 'economics'
      "Économie"
    when 'arts' 
      "Arts"
    when 'environment'
      "Environnement"
    when 'sciences'
      "Sciences"
    when 'technology'
      "Technologie"
    when 'history'
      "History"
    else 
    raise "Category naming not implemented for #{category}!"
    end
  end
end