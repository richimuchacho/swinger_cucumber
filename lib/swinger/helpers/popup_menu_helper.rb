module Swinger
  module PopupMenu
    java_import org.netbeans.jemmy.operators.JPopupMenuOperator
    
    def popup_menu(id, container = container.current)
      container_check! container, "Popup Menu"
      JPopupMenuOperator.new(container, string_or_numeric_id(id))
    end
  end
end

World(Swinger::PopupMenu) # unless in_cucumber_jvm?
