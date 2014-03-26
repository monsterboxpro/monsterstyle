Time.zone = 'Eastern Time (US & Canada)'

set :css_dir   , 'stylesheets'
set :js_dir    , 'javascripts'
set :images_dir, 'images'
set :layout_dir, 'layouts'

activate :livereload
activate :directory_indexes

activate :deploy do |deploy|
  deploy.method   = :ftp
  deploy.host     = 'ftp.monsterboxpro.com'
  deploy.path     = '/public_html'
  deploy.user     = 'monsterb'
  deploy.password = 'scroll_SMB1'
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end
