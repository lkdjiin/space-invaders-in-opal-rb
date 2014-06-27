require 'opal'
require 'opal-jquery'

desc "Build our app to build.js"
task :build do
  env = Opal::Environment.new
  env.append_path "app"

  File.open("build.js", "w+") do |out|
    out << env["application"].to_s
  end
end

desc 'Build app for production'
task :production => :build do
  cp 'app/templates/index_production.html', 'index.html'
end

desc 'Run development server'
task :development do
  cp 'app/templates/index_development.html', 'index.html'
  `bundle exec rackup`
end
