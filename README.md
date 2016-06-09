# Introducing the quiz gem

    require 'quiz'

    txt =<<EOF
    Test quiz

    question: What is the color of the common frog?

    options:
      option: blue
      option: yellow
      option: green

    answer: green

    ------------------------------

    question: What is 2 + 2?

    options:
      option: 5
      option: 4
      option: 3

    answer: 4

    ------------------------------

    question: What is Africa?

    options:
      option: region
      option: continent
      option: country
      option: other

    answer: continent

    EOF

    puts Quiz.new(txt).start 

Here's the interactive ruby session output
<pre>
What is the color of the common frog?
is it ... 
  a) green
  b) yellow
  c) blue
b
the answer was green
What is 2 + 2?
is it ... 
  a) 3
  b) 4
  c) 5
b
* correct *
What is Africa?
is it ... 
  a) other
  b) country
  c) region
  d) continent
c
the answer was continent
you scored 33%
</pre>

The quiz gem accepts XML input either as a string, a local file, or URL. Here's the XML file layout I originally used:

<pre>
&lt;questions&gt;
  &lt;q&gt;
    &lt;question&gt;  What city is the capital of scotland?         &lt;/question&gt;
    &lt;options&gt;
      &lt;option&gt;  Edinburgh  &lt;/option&gt;
      &lt;option&gt;  Glasgow    &lt;/option&gt;
      &lt;option&gt;  Aberdeen   &lt;/option&gt;
      &lt;option&gt;  Oban       &lt;/option&gt;
    &lt;/options&gt;
    &lt;answer&gt;    Edinburgh  &lt;/answer&gt;
  &lt;/q&gt;
  &lt;q&gt;
    &lt;question&gt;  Who is the first minister of Scotland?   &lt;/question&gt;
    &lt;options&gt;
      &lt;option&gt;  Henry McLeish    &lt;/option&gt;
      &lt;option&gt;  Simon Dunsmore   &lt;/option&gt;
      &lt;option&gt;  Alex Salmond     &lt;/option&gt;
      &lt;option&gt;  Kenny MacAskell  &lt;/option&gt;
    &lt;/options&gt;
    &lt;answer&gt;    Alex Salmond     &lt;/answer&gt;
  &lt;/q&gt;
  &lt;q&gt;
    &lt;question&gt;  Who is the Cabinet Secretary for Justice in Scotland?   &lt;/question&gt;
    &lt;options&gt;
      &lt;option&gt;  Henry McLeish    &lt;/option&gt;
      &lt;option&gt;  Simon Dunsmore   &lt;/option&gt;
      &lt;option&gt;  Alex Salmond     &lt;/option&gt;
      &lt;option&gt;  Kenny MacAskell  &lt;/option&gt;
    &lt;/options&gt;
    &lt;answer&gt;    Kenny MacAskell  &lt;/answer&gt;
  &lt;/q&gt;  
  &lt;q&gt;
    &lt;question&gt;  Who invented the televsion?   &lt;/question&gt;
    &lt;options&gt;
      &lt;option&gt;  Philo Taylor Farnsworth   &lt;/option&gt;
      &lt;option&gt;  Thomas Edison             &lt;/option&gt;
      &lt;option&gt;  John Logie Baird          &lt;/option&gt;
      &lt;option&gt;  Alexander Graham Bell     &lt;/option&gt;
    &lt;/options&gt;
    &lt;answer&gt;    John Logie Baird  &lt;/answer&gt;
  &lt;/q&gt;  
&lt;/questions&gt;
</pre>

## Resources

* jrobertson/quiz https://github.com/jrobertson/quiz

quiz gem xml rowx
