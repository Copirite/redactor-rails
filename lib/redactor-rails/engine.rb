module RedactorRails
  class Engine < Rails::Engine
    isolate_namespace RedactorRails
    initializer "helper" do |app|
      ActiveSupport.on_load(:action_view) do
        include RedactorRails::Helpers
      end
    end

    initializer "redactor_devise" do |app|
      ActiveSupport.on_load(:action_controller) do
        include RedactorRails::Devise
      end
    end
  end
end
