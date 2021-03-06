module RailsResponsiveAppTheme
  class AssetsGenerator < Rails::Generators::Base
    desc "Copy the --theme stylesheets to your rails application assets path, so you can customize them"
    source_root File.expand_path('../templates', __FILE__)

    def copy_stylesheets
      copy_file "main.css"          , "app/assets/stylesheets/theme/main.css"
      copy_file "bg.css"            , "app/assets/stylesheets/theme/customize.css"
      copy_file "bootstrap.css"     , "app/assets/stylesheets/theme/bootstrap.css"
      copy_file "responsive.css"    , "app/assets/stylesheets/theme/responsive.css"
      copy_file "1.jpg"    , "app/assets/images/theme/bg.jpg"

      # directory "#{options.theme}"  , "app/assets/stylesheets/themes/#{options.theme}"
    end

    def copy_images
  #     directory "images/responsive/themes/#{options.theme}"      , "app/assets/images/responsive/themes/#{options.theme}"
    end

  end
end
