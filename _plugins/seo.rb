class SeoTag < Liquid::Tag
  def initialize(tag_name, text, tokens)
    super
    @text = text
  end

  def render(context)
    "#{@text} #{Time.now}"
  end
end

Liquid::Template.register_tag(:seo, SeoTag)

