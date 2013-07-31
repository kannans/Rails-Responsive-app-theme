module RailsResponsiveAppTheme
  class AssetsGenerator < Rails::Generators::Base
    desc "Copy the --theme stylesheets to your rails application assets path, so you can customize them"
    source_root File.expand_path('../../../../../app/assets/', __FILE__)
    class_option :theme,        :type => :string,   :default => :default,   :desc => 'Specify the layout theme to be copied'

    def copy_stylesheets
      copy_file "stylesheets/responsive/theme/base.css"                , "app/assets/stylesheets/responsive/base.css"
      directory "stylesheets/responsive/themes/#{options.theme}" , "app/assets/stylesheets/responsive/themes/#{options.theme}"
    end

    def copy_images
      directory "images/responsive/themes/#{options.theme}"      , "app/assets/images/responsive/themes/#{options.theme}"
    end

  end
end
