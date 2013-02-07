Gem::Specification.new do |s|
  s.name = 'quiz'
  s.version = '0.1.2'
  s.summary = 'quiz'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/quiz.pem'
  s.cert_chain  = ['gem-public_cert.pem']
end
