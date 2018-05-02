class Screencast < ApplicationRecord

  extend FriendlyId

  friendly_id :slug

  def render_content
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, 
                                        fenced_code_blocks: true
                                       )
    markdown.render(content).html_safe
  end

end
