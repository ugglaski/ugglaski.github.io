source "https://rubygems.org"
# Use explicit Jekyll versions for local consistency.
# GitHub Pages supports Jekyll 4.x in the pages build environment.
gem "jekyll", "~> 4.1.0"
# This is the default theme for new Jekyll sites.
gem "minima", "~> 2.5"

# Plugin list for local build
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.13"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

