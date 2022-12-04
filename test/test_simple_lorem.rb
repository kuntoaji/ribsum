require "minitest/autorun"
require "simple_lorem"

class HolaTest < Minitest::Test
  def test_less_than_one_paragraph
    assert_equal SimpleLorem::PARAGRAPH,
      SimpleLorem.paragraph(-3)
  end

  def test_one_paragraph
    assert_equal SimpleLorem::PARAGRAPH,
      SimpleLorem.paragraph
  end

  def test_more_than_one_paragraph
    assert_equal "#{SimpleLorem::PARAGRAPH}\n\n#{SimpleLorem::PARAGRAPH}",
      SimpleLorem.paragraph(2)
  end

  def test_less_than_one_sentence
    expected_result = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'

    assert_equal expected_result,
      SimpleLorem.sentences(-3)
  end

  def test_one_sentence
    expected_result = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'

    assert_equal expected_result,
      SimpleLorem.sentences
  end

  def test_more_than_one_sentences
    expected_result = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'

    assert_equal expected_result,
      SimpleLorem.sentences(2)
  end

  def test_less_than_one_word
    expected_result = 'Lorem'

    assert_equal expected_result,
      SimpleLorem.words(-3)
  end

  def test_one_word
    expected_result = 'Lorem'

    assert_equal expected_result,
      SimpleLorem.words
  end

  def test_more_than_one_words
    expected_result = 'Lorem ipsum'

    assert_equal expected_result,
      SimpleLorem.words(2)
  end

  def test_less_than_one_char
    expected_result = 'L'

    assert_equal expected_result,
      SimpleLorem.chars(-3)
  end

  def test_one_char
    expected_result = 'L'

    assert_equal expected_result,
      SimpleLorem.chars
  end

  def test_more_than_one_chars
    expected_result = 'Lo'

    assert_equal expected_result,
      SimpleLorem.chars(2)
  end
end
