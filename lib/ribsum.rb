require 'ribsum/version'

module Ribsum
  extend self

  PARAGRAPH = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

  def paragraphs(total = 1)
    total = total.to_i
    return PARAGRAPH if total <= 1

    # use << for best performance
    # reference: https://dattdongare.com/blog/string-concatenation-ruby/
    result = ''
    total.times do |i|
      result << PARAGRAPH
      result << "\n\n" if i < total - 1
    end

    result
  end

  def sentences(total = 1)
    total = 1 if total.to_i < 1

    index = total - 1
    @_sentences ||= {}

    @_sentences[index] ||= PARAGRAPH.split('.')[0..index].map{|sentence| sentence.strip }.join('. ')
  end

  def words(total = 1)
    total = 1 if total.to_i < 1

    index = total - 1
    @_words ||= {}

    @_words[index] ||= PARAGRAPH.gsub('.', '').gsub(',', '').split(' ')[0..index].join(' ')
  end

  def chars(total = 1)
    total = 1 if total.to_i < 1

    index = total - 1
    @_chars ||= {}

    @_chars[index] ||= PARAGRAPH.gsub('.', '').gsub(',', '').gsub(' ', '')[0..index]
  end
end
