#!/usr/bin/ruby

# file: quiz.rb

require 'rxfhelper'
require 'rexml/document'
require 'rowx'

class Quiz
  include REXML

  def initialize(x)

    s, type = RXFHelper.read(x)
        
    xml = case type
    when :xml then
      s
    when :unknown
      lines = s.strip.lines
      title = lines.first
      title.prepend 'title: ' unless title =~ /^title:/
      RowX.new(lines.join).to_xml
    end
    
    @doc = Document.new(xml)
    
  end

  def start(n=3, return_score: true)

    nodes = XPath.match(@doc.root, '*[question]')
    list = (0...nodes.length).to_a.sample(n)
    questions = nodes.values_at(*list)

    @results = questions.map do |q|

      question, answer = q.text('question').strip, q.text('answer').strip
      *options = XPath.match(q,'./options//option/text()').sort{rand}
      a_options = options.length.times.map {|x| (97 + x).chr }.\
        zip(options.map {|x| x.to_s.strip})
      q_options = a_options.map {|x| " " * 2 + "%s) %s" % x}
      answers = Hash[a_options.to_a] # answers are in the hash, keys = a,b,c,d
      
      if block_given? then
        result = yield(question, q_options, answers, answer)
      else
        puts question + "\nis it ... \n" + q_options.join("\n")
        
        student_answer = gets.chop; redo unless answers.keys.include? student_answer
        
        result = answers[student_answer] == answer
        reply = result ? '* correct *' : 'the answer was ' + answer
        puts reply
      end
      result
    end
    
    score() if return_score
  end
  
  def score()
    tally = (@results - [false]).size
    percent = 100 / (@results.size / tally.to_f)
    your_score = "you scored %s%" % percent.to_i

  end
end
