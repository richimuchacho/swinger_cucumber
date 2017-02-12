java_import org.netbeans.jemmy.ComponentChooser
java_import org.netbeans.jemmy.operators.ComponentOperator

class ToolTipChooser
  include ComponentChooser

  def initialize(tooltip)
    @tooltip = tooltip
    self
  end

  def description
    "Component with tooltip '#{@tooltip}'"
  end

  def check_component(component)
    component.tool_tip_text == @tooltip
  end
end

# This class tries to use internal variable names to find components declared
# within a window class (even if it's private) through reflection.
class VarNameComponentChooser
  include ComponentChooser

  def initialize(name, container = nil)
    @name = name
    @container = container
  end

  def description
    "Component in '#{@container}' with variable name '#{@name}'"
  end
    
  def check_component(component)
    operator = ComponentOperator.new(component)
    window = @container ? @container.source : operator.window
    field = window.java_class.declared_field(@name)
    field.accessible = true
    field_obj = field.value(window)
    field_obj == component
  end
end
