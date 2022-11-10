say 'Mounting Engine'
insert_into_file(
  'config/routes.rb',
  %(mount Jarvis::Engine => '/' if Rails.env.development?),
  before: /\s*end/
)
append_to_file 'config/routes.rb', %(mount Jarvis::Engine => '/' if Rails.env.development?\n), before: "\nend"

