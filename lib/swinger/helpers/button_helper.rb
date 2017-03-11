module Swinger
  module Button
    java_import org.netbeans.jemmy.operators.JButtonOperator
    java_import org.netbeans.jemmy.ComponentChooser

    def button(id, container = container.current)
      container_check! container, "Button"
      id = string_or_numeric_id(id)
      operator = nil
      timeout { operator = JButtonOperator.new(container, id) }
      operator
    rescue TimeoutExpiredException
      JButtonOperator.new(container, ToolTipChooser.new(id))
    end

  end
end

World(Swinger::Button) # unless in_cucumber_jvm?
