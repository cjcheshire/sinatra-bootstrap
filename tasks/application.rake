desc 'Start the application'
task :start do
  system "bundle exec foreman start -f Procfile_development"
end

task :default do
  puts "*** All good ***"
  true
end