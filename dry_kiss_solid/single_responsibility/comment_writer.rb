# frozen_string_literal: true

require 'date'

# correct. class responsible only for comment logic.
class CommentWriter
  attr_reader :text

  def initialize(text, author)
    @text = text
    @author = author
  end

  def to_beginning_add(message)
    self.text = "#{comment_with(message)} #{text}"
  end

  def to_end_add(message)
    self.text = "#{text}\n#{comment_with(message)}"
  end

  protected

  attr_accessor :author
  attr_writer :text

  def comment_with(message)
    "##{message}. Made by #{author} at #{DateTime.now}\n"
  end
end
