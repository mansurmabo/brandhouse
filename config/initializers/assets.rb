# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
Rails.application.config.assets.precompile += %w( jquery-1.11.2.min.js jquery-2.1.3.min.js jsup.js )
Rails.application.config.assets.precompile += %w( vendor/jquery-1.11.2.min.js )
Rails.application.config.assets.precompile += %w( vendor/jquery-2.1.3.min.js )
Rails.application.config.assets.precompile += %w( vendor/jquery-1.11.2.min.js vendor/jquery-2.1.3.min.js jsup.js )
Rails.application.config.assets.precompile += %w(admin/admin.scss)

# application.js, application.scss, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( active_admin.js active_admin.scss )
