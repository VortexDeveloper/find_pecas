# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.

Rails.application.config.assets.precompile += %w( font-awesome.min.css )
Rails.application.config.assets.precompile += %w( zabuto_calendar.css )
Rails.application.config.assets.precompile += %w( flexslider.css )
Rails.application.config.assets.precompile += %w( jquery.fancybox.css )
Rails.application.config.assets.precompile += %w( ion.rangeSlider.css )
Rails.application.config.assets.precompile += %w( ion.rangeSlider.skinFlat.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( media.css )

Rails.application.config.assets.precompile += %w( jquery-1.12.3.min.js )
Rails.application.config.assets.precompile += %w( fancybox/fancybox.js )
Rails.application.config.assets.precompile += %w( fancybox/helpers/jquery.fancybox-thumbs.js )
Rails.application.config.assets.precompile += %w( jquery.flexslider-min.js )
Rails.application.config.assets.precompile += %w( masonry.pkgd.min.js )
Rails.application.config.assets.precompile += %w( jquery.fractionslider.min.js )
Rails.application.config.assets.precompile += %w( ion.rangeSlider.min.js )
Rails.application.config.assets.precompile += %w( main.js )
