def run_jarvis_install_template(path) system "#{RbConfig.ruby} ./bin/rails app:jarvis LOCATION=#{File.expand_path("../install/#{path}.rb",  __dir__)}" end

namespace :jarvis do
  desc 'Install Jarvis'
  task :install do
    if Rails.root.join('config/routes.rb').exist?
      run_jarvis_install_template 'jarvis'
    else
      puts 'config/routes.rb file found'
    end
  end
end

