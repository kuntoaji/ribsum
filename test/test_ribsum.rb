require "minitest/autorun"
require "ribsum"

class RibsumTest < Minitest::Test
  def test_less_than_one_paragraph
    assert_equal Ribsum::PARAGRAPH,
      Ribsum.paragraphs(-3)
  end

  def test_one_paragraph
    assert_equal Ribsum::PARAGRAPH,
      Ribsum.paragraphs
  end

  def test_more_than_one_paragraph
    assert_equal "#{Ribsum::PARAGRAPH}\n\n#{Ribsum::PARAGRAPH}",
      Ribsum.paragraphs(2)
  end

  def test_less_than_one_sentence
    expected_result = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'

    assert_equal expected_result,
      Ribsum.sentences(-3)
  end

  def test_one_sentence
    expected_result = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'

    assert_equal expected_result,
      Ribsum.sentences
  end

  def test_more_than_one_sentences
    expected_result = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'

    assert_equal expected_result,
      Ribsum.sentences(2)
  end

  def test_less_than_one_word
    expected_result = 'Lorem'

    assert_equal expected_result,
      Ribsum.words(-3)
  end

  def test_one_word
    expected_result = 'Lorem'

    assert_equal expected_result,
      Ribsum.words
  end

  def test_more_than_one_words
    expected_result = 'Lorem ipsum'

    assert_equal expected_result,
      Ribsum.words(2)
  end

  def test_less_than_one_char
    expected_result = 'L'

    assert_equal expected_result,
      Ribsum.chars(-3)
  end

  def test_one_char
    expected_result = 'L'

    assert_equal expected_result,
      Ribsum.chars
  end

  def test_more_than_one_chars
    expected_result = 'Lo'

    assert_equal expected_result,
      Ribsum.chars(2)
  end
end
