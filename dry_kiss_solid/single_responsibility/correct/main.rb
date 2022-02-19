# frozen_string_literal: true

require_relative 'comment_writer'
require_relative 'file_editor'

file_editor = FileEditor.new('dry_kiss_solid/single_responsibility/some_code.txt')
arum_commentator = CommentWriter.new(file_editor.text, 'arum')
arum_commentator.to_beginning_add('first line')
arum_commentator.to_end_add('last line')
file_editor.write(arum_commentator.text)
