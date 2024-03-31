def extract_urls(text)
    urls = text.scan(/(http|ftp|https):\/\/([\w_-]+(?:\.[\w_-]+)+)([\w.,@?^=%&:\/~+#-]*[\w@?^=%&\/~+#-]*)/)
    urls.each do |url|
        puts "#{url[0]}://#{url[1]}#{url[2]}"
    end
end

sample_text = "Visit our site at http://www.example.org for more
  information. Check out our search page at
  https://example.com/search?q=ruby+regex. Don’t forget to ftp our
  resources at ftp://example.com/resources."
extract_urls(sample_text)
