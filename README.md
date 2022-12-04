# Simple Lorem
Lightweight Lorem Ipsum text generator

## Installation

```
gem install simple_lorem
```

## Usage

Call methods directly
```ruby
# Paragraph
SimpleLorem.paragraphs # default 1
SimpleLorem.paragraphs(2)

# Sentences
SimpleLorem.sentences # default 1
SimpleLorem.sentences(2)

# Words
SimpleLorem.words # default 1
SimpleLorem.words(2)

# Characters # default 1
SimpleLorem.chars
SimpleLorem.chars(2)
```

Or include to your class

```ruby
class MyClass
  include SimpleLorem
  ...
end
```
