# jekyll-include-code
A barebones Jekyll plugin to include code snippets from raw Github content

This is a very barebones plugin to embed a range of lines from your raw Github code into your Jekyll site. Actually, it can probably be any raw file accessible on the Internet.

## Installation

Drop the ```include-code.rb``` into your Jekyll ```_plugins``` directory. That's it.

## Usage

Do something like this in your Markdown files, or wherever you can use Liquid templates:

```python
{% include_code https://raw.githubusercontent.com/asengupta/transformers-paper-implementation/main/transformer.py!10!50%}
```

The above will include the lines 10 to 50 of the file ```https://raw.githubusercontent.com/asengupta/transformers-paper-implementation/main/transformer.py```.

There are no defaults; you **must** specify the starting and ending lines. There is no boundary checking: use at your own risk.

## Warning

This plugin has no error checking, no edge case checking, no configurability.

## Why?

I wanted a way to include parts of my Github code in my blog posts, and didn't want to use Github Gists. There was no existing plugin I found which could do this, either.

