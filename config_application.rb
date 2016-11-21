
module XXX
    class Application < Rails::Application

    (...)

    config.generators do |g|
      g.test_framework = "rspec"
      g.controller_specs = true
      g.helper_specs = false
      g.view_specs = false
    end
  end
end
