task :default => :rspec_all_engines

task :rspec_all_engines do
  puts ""
  puts "Engine Application Composer - Test-suite"
  puts "http://github.com/iboard/eac"
  puts "See README.md"
  puts ""
  puts "Running dummy-app's specs"
  puts "-------------------------"
  system "rspec eac/spec/spec_helper.rb eac/spec/*/*_spec.rb"
  puts ""
  puts "Running all engine's specs ..."
  puts "------------------------------"
  Dir.foreach('.') do |engine|
    if engine =~ /eac(.+)/
      printf "ENGINE #{engine} in #{engine}/spec/*/*_spec.rb .."
      system "rspec #{engine}/spec/spec_helper.rb #{engine}/spec/*/*_spec.rb"
    end
  end
end
