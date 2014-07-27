# Wrappable DSL
module Wrappable
  # Wrapper methods
  class WrapperOptions
    attr_reader :before, :after

    def initialize(&block)
      instance_eval(&block)
    end

    private

    def before_run(method_name)
      @before = method_name
    end

    def after_run(method_name)
      @after = method_name
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end

  # Defining class methods
  module ClassMethods
    def wrap(original_method, &block)
      wrapper_options = WrapperOptions.new(&block)
      alias_method :old_method, original_method

      define_method original_method do
        send(wrapper_options.before)
        send(:old_method)
        send(wrapper_options.after)
      end
    end
  end
end

# Callback testing class
class CallbackTest
  include Wrappable

  def original
    puts 'Original method'
  end

  def before
    puts 'Before method'
  end

  def after
    puts 'After method'
  end

  wrap :original do
    before_run :before
    after_run :after
  end
end

CallbackTest.new.original
