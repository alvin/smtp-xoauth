require 'rake/gempackagetask'

spec = Gem::Specification.new do |s| 
  s.name = "smtp-xoauth"
  s.version = "0.0.1"
  s.author = "Alvin Engler"
  s.email = "alvin@alvinengler.com"
  s.homepage = "http://alvinengler.com/"
  s.platform = Gem::Platform::RUBY
  s.summary = "Adds auth_xoauth to Ruby's core Net::SMTP to support Google's new XOAUTH http://code.google.com/apis/gmail/oauth/protocol.html"
  s.files = FileList["{bin,lib}/**/*"].to_a
  s.require_path = "lib"
  s.autorequire = "name"
  s.test_files = FileList["{test}/**/*test.rb"].to_a
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
  s.add_dependency("oauth", ">= 0.3.6")
end
 
Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.need_tar = true 
end 

