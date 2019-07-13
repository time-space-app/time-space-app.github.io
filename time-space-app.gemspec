# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "time-space-app"
  spec.version       = "1.5.0"
  spec.authors       = ["Kil il guk"]
  spec.email         = ["dev@time-space.kr"]

  spec.summary       = %q{ A Theme built for developers }
  spec.homepage      = "https://github.com/time-space-app/time-space-app.github.io"
  spec.license       = "MIT"

#  spec.files = `git ls-files -z`.split("\x0").select do |f|
#    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README|blog|contact)((\.(txt|md|markdown)|$)))!i)
#  end
 
  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1.0"  # 추가
  spec.add_development_dependency "bundler", '~> 2.0', '>= 2.0.1'
  spec.add_development_dependency "rake", "~> 12.0"
end
