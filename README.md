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
Ribsum.paragraphs # default 1
Ribsum.paragraphs(2)

# Sentences
Ribsum.sentences # default 1
Ribsum.sentences(2)

# Words
Ribsum.words # default 1
Ribsum.words(2)

# Characters # default 1
Ribsum.chars
Ribsum.chars(2)
```

Or include to your class

```ruby
class MyClass
  include Ribsum
  ...
end
```
