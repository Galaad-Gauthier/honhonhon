class ReadWikifurJob < ActiveJob::Base

  include WebsiteReadable

  queue_as :default

  def extract_text_from(page)
    page.css("p").try(:text).to_s
  end

end
