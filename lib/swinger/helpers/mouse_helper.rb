module Swinger
  module Mouse
    BUTTON1_MASK = Java::java.awt.event.InputEvent::BUTTON1_MASK
    BUTTON2_MASK = Java::java.awt.event.InputEvent::BUTTON2_MASK
    BUTTON3_MASK = Java::java.awt.event.InputEvent::BUTTON3_MASK
    
    def mask(button)
      case button
      when :left
        BUTTON1_MASK
      when :middle
        BUTTON2_MASK
      when :right
        BUTTON3_MASK
      end
    end
  end
end

World(Swinger::Mouse) unless in_cucumber_jvm?
