require "eactheme/engine"

module Eactheme


  class Engine
    def main_template
      "eactheme/themes/#{theme_name}"
    end

    def main_css
      "eactheme/#{theme_name}.css"
    end

    def theme_name
      @theme_name || 'default'
    end

    def set_theme(name)
      @theme_name = name
    end
  end
end
