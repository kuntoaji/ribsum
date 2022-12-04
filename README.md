# Ribsum
Lightweight Lorem Ipsum text generator

## Installation

```
gem install ribsum
```

## Usage

Call methods directly
```ruby
# Paragraph
Ribsum.paragraphs # default 1 paragraph
# => Lorem ipsum dolor sit amet...laborum

Ribsum.paragraphs(2)
# => Lorem ipsum dolor sit amet...laborum.
# => Lorem ipsum dolor sit amet...laborum.

# Sentences
Ribsum.sentences # default 1 sentence
# => Lorem ipsum dolor sit amet...aliqua

Ribsum.sentences(2)
# => Lorem ipsum dolor sit amet...consequat

# Words
Ribsum.words # default 1 word
# => Lorem

Ribsum.words(2)
# => Lorem ipsum

# Characters
Ribsum.chars # default 1 character
# => L

Ribsum.chars(2)
# => Lo
```

Or include to your class

```ruby
class MyClass
  include Ribsum
  ...
end

my_class = new MyClass

my_class.paragraphs
# => Lorem ipsum dolor sit amet...laborum

my_class.sentences
# => Lorem ipsum dolor sit amet...aliqua

my_class.words
# => Lorem

my_class.chars
# => L
```
