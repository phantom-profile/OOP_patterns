# frozen_string_literal: true

# correct. class responsible only for file editing logic.
class FileEditor
  def initialize(file_path)
    @file = File.open(file_path, 'r+')
  end

  def text
    @text ||= file.read
  end

  def write(text)
    file.truncate 0
    file.write text
  end

  protected

  attr_accessor :file
end
