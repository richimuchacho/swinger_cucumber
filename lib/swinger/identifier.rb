java_import org.netbeans.jemmy.util.NameComponentChooser

module Swinger
  module Identifier

    def string_or_numeric_id(id)
      return id unless id.is_a?(String)

      selector, value = id[0,1], id[1..-1]

      case selector
        when "#"
          value.to_i - 1
        when "%"
          NameComponentChooser.new(value)
        when "@"
          VarNameComponentChooser.new(value, container.current)
        else
          id
      end
    end

  end
end

World(Swinger::Identifier) # unless in_cucumber_jvm?
