Gem::Specification.new do |s|
  s.name = 'quiz'
  s.version = '0.2.0'
  s.summary = 'quiz'
  s.authors = ['James Robertson']
  s.files = Dir['lib/quiz.rb'] 
  s.add_runtime_dependency('rxfhelper', '~> 0.3', '>=0.3.0')
  s.add_runtime_dependency('rowx', '~> 0.5', '>=0.5.0')  
  s.signing_key = '../privatekeys/quiz.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/quiz'
  s.required_ruby_version = '>= 2.1.2'
end
