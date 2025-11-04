require 'action_controller/metal/renderers'

module ActionController
  module PrototypeUpdateRenderer
    def render(*args, &block)
      options = args.first

      # Handle render :update do |page| ... end
      if options == :update
        # Generate JavaScript using PrototypeHelper
        generator = ActionView::Helpers::PrototypeHelper::JavaScriptGenerator.new(view_context, &block)

        # Render as JavaScript
        return super(js: generator.to_s)
      end

      # Handle render update: true/value
      if options.is_a?(Hash) && options.key?(:update)
        update_value = options.delete(:update)

        # If a block was given, use it
        if block_given?
          generator = ActionView::Helpers::PrototypeHelper::JavaScriptGenerator.new(view_context, &block)
          return super(options.merge(js: generator.to_s))
        end

        # If update value is a proc/lambda, use it
        if update_value.is_a?(Proc)
          generator = ActionView::Helpers::PrototypeHelper::JavaScriptGenerator.new(view_context, &update_value)
          return super(options.merge(js: generator.to_s))
        end
      end

      # Fall back to normal rendering
      super(*args, &block)
    end
  end
end

# Prepend to both Base and API (if present)
ActionController::Base.prepend(ActionController::PrototypeUpdateRenderer)
ActionController::API.prepend(ActionController::PrototypeUpdateRenderer) if defined?(ActionController::API)