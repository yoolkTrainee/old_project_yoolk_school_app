module CoursesHelper

  def CourseClass(courses)
    klassName = ''
    courses.klasses.each do |klass|
      klassName += klass.name + "; "
    end
    return klassName.gsub(/.{2}$/, "")
  end

  def CourseTextbook(courses)
    textbookName = ''
    courses.textbooks.each do |textbook|
      # textbookName += "<a href = 'http://#{textbook.uri}' target='_blank'>#{textbook.title}</a>; "
      textbookName += content_tag(:a, textbook.title, :href => "#{textbook.uri}", :target => "_blank") + "; "
    end
    return textbookName.gsub(/.{2}$/, "").html_safe
  end

  def CourseTutor(courses)
    tutorName = ''
    fullName = ''
    courses.tutors.each do |tutor|
      tutor.first_name << " " << tutor.last_name
      tutorName << content_tag(:a, tutor.first_name, :href => "#{tutor.uri}", :target => "_blank") << "; "
      # tutorName << "<a href = 'http://#{tutor.uri}' target='_blank'>#{tutor.first_name}</a>; " 
    end
    return tutorName.gsub(/.{2}$/, "").html_safe
  end

end
