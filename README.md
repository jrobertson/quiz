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

The quiz gem accepts XML input either as a string, a local file, or URL. I've updated the code to allow a block to control how the user interacts with the quiz e.g.

    quiz = Quiz.new(RXFHelper.read(RowX.new(entries).to_xml))
    quiz.start do |question, q_options, answers, answer|
      puts question + "\nis it ... \n" + q_options.join("\n")
      
      student_answer = gets.chop; redo unless answers.keys.include? student_answer
      
      result = answers[student_answer] == answer
      reply = result ? '* correct *' : 'the answer was ' + answer
      puts reply
      result
    end
    puts quiz.score



## Resources

* [jrobertson/quiz - GitHub](https://github.com/jrobertson/quiz)

