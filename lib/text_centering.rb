class TextCentering
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def center
    textlines = text.split("\n").map {|line| line.strip}
    maxlength = textlines.group_by {|line| line.length}.max.first
    centered_array= textlines.map do |line|
      " " * ((maxlength-line.length)/2) + line
    end
    centered_array.join("\n")+"\n"
  end
end