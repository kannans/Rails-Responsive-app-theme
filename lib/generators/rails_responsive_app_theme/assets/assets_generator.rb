module RailsResponsiveAppTheme
  class AssetsGenerator < Rails::Generators::Base
    desc "Copy the --theme stylesheets to your rails application assets path, so you can customize them"
    source_root File.expand_path('../templates', __FILE__)
    class_option :theme,        :type => :string,   :default => :default,   :desc => 'Specify the layout theme to be copied'

    def copy_stylesheets
      copy_file "main.css"          , "app/assets/theme/main.css"
      copy_file "bg.css"            , "app/assets/theme/customize.css"
      copy_file "bootstrap.css"     , "app/assets/theme/bootstrap.css"
      copy_file "responsive.css"    , "app/assets/responsive.css"

      directory "#{options.theme}"  , "app/assets/stylesheets/themes/#{options.theme}"
    end

    def copy_images
      directory "images/responsive/themes/#{options.theme}"      , "app/assets/images/responsive/themes/#{options.theme}"
    end

  end
end
