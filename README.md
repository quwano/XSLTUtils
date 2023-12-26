# XSLTUtils
A versatile and handy collection of templates for XSLT.
## Overview
- same name elements recursively combiner  
~~~
Before conversion
<?xml version="1.0" encoding="UTF-8"?>
<p>plain text<u>underline</u><u><b>underline and bold</b></u><u><b><i>underline and bold and italic</i></b></u><b><i>bold and italic</i></b><i>italic</i>plain text<u>underline</u><u><b>underline and bold</b></u><u><b><i>underline and bold and italic</i></b></u><b><i>bold and italic</i></b><i>italic</i>plain text</p>
~~~
~~~
After conversion
<?xml version="1.0" encoding="UTF-8"?>
<p>plain text<u>underline<b>underline and bold<i>underline and bold and italic</i></b></u><b><i>bold and italic</i></b><i>italic</i>plain text<u>underline<b>underline and bold<i>underline and bold and italic</i></b></u><b><i>bold and italic</i></b><i>italic</i>plain text</p>
~~~
## Requirement
XSLT2.0
## Usage
- same name elements recursively combiner  
Please copy or import or include this template into your xslt.
The template matches all element(). Please limit the application scope with XPath to your desired range.
## Features
- same name elements recursively combiner  
Combine adjacent multiple elements with the same name into a single element.
Repeat this process recursively.
Attributes treatment is not supported.
## Author
https://github.com/quwano
