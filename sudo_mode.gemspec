$:.push File.expand_path("../lib", __FILE__)

require "sudo_mode/version"

Gem::Specification.new do |s|
  s.name        = "sudo_mode"
  s.version     = SudoMode::VERSION
  s.authors     = ["Timothy Andrew", "Jithu Gopal"]
  s.email       = ["mail@timothyandrew.net", "jithug87@gmail.com"]
  s.homepage    = "http://github.com/nilenso/sudo_mode"
  s.summary     = "Sudo mode for your devilish deeds."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2"
end
