Time.zone = 'Eastern Time (US & Canada)'
require "lib/build_gem"
helpers GemBuilder

set :css_dir   , 'stylesheets'
set :js_dir    , 'javascripts'
set :images_dir, 'images'
set :layout_dir, 'layouts'

activate :livereload
activate :directory_indexes

activate :deploy do |deploy|
  deploy.method   = :ftp
  deploy.host     = 'ftp.monsterstyle.dev'
  deploy.path     = '/public_html'
  deploy.user     = 'brizzlefeller'
  deploy.password = '7sdh0#*hf7u2#G'
end

configure :build do
  binding.pry
  build_monsterstyle_gem
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end

helpers do
  def section name, &block
    content = capture(&block) if block
    partial 'section', locals: { content: content, name: name }
  end

  def row name, extra, desc
    partial 'row', locals: { name: name,
                             extra: extra,
                             desc: desc }
  end

  def codes *names, &block
    content = capture(&block) if block
    partial 'codes', locals: {names: names,
                              content: content}
  end

  def code lang, name
    partial 'code', locals: {lang: lang,
                             name: name}
  end
end
