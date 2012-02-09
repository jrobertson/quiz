# Introducing the quiz gem

Here's a quick example

    require 'rowx'
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

    puts Quiz.new(RowX.new(txt).to_xml).start 

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
<questions>
  <q>
    <question>  What city is the capital of scotland?         </question>
    <options>
      <option>  Edinburgh  </option>
      <option>  Glasgow    </option>
      <option>  Aberdeen   </option>
      <option>  Oban       </option>
    </options>
    <answer>    Edinburgh  </answer>
  </q>
  <q>
    <question>  Who is the first minister of Scotland?   </question>
    <options>
      <option>  Henry McLeish    </option>
      <option>  Simon Dunsmore   </option>
      <option>  Alex Salmond     </option>
      <option>  Kenny MacAskell  </option>
    </options>
    <answer>    Alex Salmond     </answer>
  </q>
  <q>
    <question>  Who is the Cabinet Secretary for Justice in Scotland?   </question>
    <options>
      <option>  Henry McLeish    </option>
      <option>  Simon Dunsmore   </option>
      <option>  Alex Salmond     </option>
      <option>  Kenny MacAskell  </option>
    </options>
    <answer>    Kenny MacAskell  </answer>
  </q>  
  <q>
    <question>  Who invented the televsion?   </question>
    <options>
      <option>  Philo Taylor Farnsworth   </option>
      <option>  Thomas Edison             </option>
      <option>  John Logie Baird          </option>
      <option>  Alexander Graham Bell     </option>
    </options>
    <answer>    John Logie Baird  </answer>
  </q>  
</questions>
</pre>

## Resources

* [jrobertson/quiz - GitHub](https://github.com/jrobertson/quiz)

