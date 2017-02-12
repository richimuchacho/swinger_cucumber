module Swinger
  module MouseRobot
    java_import org.netbeans.jemmy.drivers.input.MouseRobotDriver
    java_import org.netbeans.jemmy.Timeout
    
    def mouse_robot(component_operator, auto_delay = 100, smooth = false)
      proxy = Class.new do
        
        def initialize(component_operator, auto_delay, smooth)
          @component_operator = component_operator
          @auto_delay = auto_delay
          @smooth = smooth
        end
        
        def method_missing(method, *args, &block)
          @mouse_driver = MouseRobotDriver.new(Timeout.new("Mouse Timeout", @auto_delay), @smooth)
          super if !@mouse_driver.respond_to?(method)
          @mouse_driver.send(method.to_sym, @component_operator, *args)
        end
        
      end
      proxy.new(component_operator, auto_delay, smooth)
    end
    
  end
end

World(Swinger::MouseRobot) unless in_cucumber_jvm?
