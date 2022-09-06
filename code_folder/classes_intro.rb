# puts "Hello World"


class Language

  $reader = "user"
  @@count = 0
  
  def initialize(language_name, topic_name)
    @language_name = language_name
    @topic_name = topic_name
    @@count += 1
  end

  def return_language_name()
    return @language_name
  end

  def return_topic_name()
    return @topic_name
  end

  def classes_count()
      return @@count
  end

end

l1 = Language.new("Ruby", "method")
puts "Language Name is " + l1.return_language_name()
puts "Topic Name is " + l1.return_topic_name()
puts "The reader is " + $reader
puts "Total Number of Classes "+ l1.classes_count().to_s
puts " "
l2 = Language.new("Python", "string")
puts "Language Name is " + l2.return_language_name()
puts "Topic Name is " + l2.return_topic_name()
puts "The reader is " + $reader
puts "Total Number of Classes "+ l2.classes_count().to_s