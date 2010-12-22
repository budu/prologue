create_file 'lib/tasks/yard.rake' do
<<-FILE
YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb', 'app/**/*.rb', '-', 'README.md']
  t.options = %w(--title #{app_name.humanize})
end
FILE
end
