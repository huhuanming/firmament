desc 'remote rails console'
task :console do
  system 'cap production rails:console'
end

desc 'deploy release version to production server'
task :deploy do
  system 'cap production deploy'
end
