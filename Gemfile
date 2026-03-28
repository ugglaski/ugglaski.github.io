source "https://rubygems.org"
# Use GitHub Pages version of Jekyll for compatibility with GitHub Pages.
# This pins a tested set of plugins and a safe Jekyll version.
gem "github-pages", group: :jekyll_plugins
# If you need extra plugins not included in github-pages, add them under group :jekyll_plugins.
# If you prefer standalone Jekyll versions, keep explicit gems instead.
#
# Example standalone configuration (not needed for GitHub Pages):
# gem "jekyll", "~> 4.1.0"
# gem "minima", "~> 2.5"

# Plugin list for GitHub Pages and local build
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

