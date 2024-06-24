require_relative "lib/rails_s3_uploader/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_s3_uploader"
  spec.version       = RailsS3Uploader::VERSION
  spec.authors       = ["Elton Santos", "Raquel Fonseca"]
  spec.email         = ["eltonaxl@hotmail.com", "raque-leto@hotmail.com"]
  spec.summary       = "Gem that makes it easy to integrate and upload files with AWS S3 using Active Storage"
  spec.description   = "Gem that makes it easy to integrate and upload files to AWS S3 using Active Storage. Pay attention: this gem is still in development. Please CONTRIBUTE!"
  spec.homepage      = "https://github.com/eltonsantos/rails_s3_uploader"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata = {
    "homepage_uri"    => spec.homepage,
    "source_code_uri" => "https://github.com/eltonsantos/rails_s3_uploader",
    "changelog_uri"   => "https://github.com/eltonsantos/rails_s3_uploader/blob/master/CHANGELOG.md",
    "developers"      => ["Elton Santos", "Raquel Fonseca"]
  }

  spec.files      = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
      f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 6.0"
  spec.add_dependency "aws-sdk-s3", "~> 1.0"
  spec.add_dependency "mini_magick"
end
