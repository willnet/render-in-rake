task :pdf do
  include Rails.application.routes.url_helpers
  include ActionView::Helpers::TagHelper
  av = ActionView::Base.new(Rails.root.join('app', 'views'))
  av.assign(user_name: 'willnet')
  template_str = av.render(template: 'things/index.pdf.erb')
  File.open('things.pdf', 'wb') do |f|
    f.write(WickedPdf.new.pdf_from_string(template_str))
  end
end
