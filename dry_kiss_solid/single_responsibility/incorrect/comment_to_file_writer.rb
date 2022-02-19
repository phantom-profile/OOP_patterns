# frozen_string_literal: true

require 'date'

# Incorrect. break single responsibility rule. Class manage comment logic and file changing logic
module Incorrect
  class CommentToFileWriter
    def initialize(file_path, author)
      @file = File.open(file_path, 'r+')
      @text = file.read
      @author = author
    end

    def to_beginning_of_file_add(message)
      self.text = comment_with(message) + text
      file.write(text)
    end

    def to_end_of_file_add(message)
      self.text = "#{text}\n#{comment_with(message)}"
      file.write(text)
    end

    protected

    attr_accessor :file, :author, :text

    def comment_with(message)
      "##{message}. Made by #{author} at #{DateTime.now}\n"
    end
  end
end
