task :autorun do
  system "rspec spec/app_specs.rb"
  true
end