module Jarvis
  class Engine < ::Rails::Engine
    initializer 'jarvis', before: :load_config_initializers do
      Rails.application.routes.append do
        mount Jarvis::Engine => '/jarvis'
      end
    end

    initializer 'jarvis.assets' do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += %w( jarvis/application.css )
      end
    end
  end
end
