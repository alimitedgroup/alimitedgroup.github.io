import re

def on_page_markdown(markdown, **kwargs):
    markdown = markdown.replace('#super[G]', '<sup>G</sup>')
    markdown = re.sub(r'(^#+.*)(<[\w:\.]+>)', r'\1 <!-- raw-typst \2 -->', markdown)
    return markdown