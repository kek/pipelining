require "pipelining/version"

#module Pipelining
  def pipe object, &block
    Class.new(BasicObject) do
      attr_reader :state

      def self.run object, &block
        runner = new object
        runner.instance_eval(&block)
      end

      def initialize starting_object
        @state = starting_object
      end

      def method_missing(m, *args, &block)
        @state = state.send(m, *args, &block)
        self
      end
    end.run(object, &block).state
  end
#end
