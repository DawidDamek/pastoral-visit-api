JSONAPI.configure do |config|
  config.default_paginator = :paged
  config.top_level_meta_include_record_count = true
  config.top_level_meta_record_count_key = :total
  config.top_level_meta_include_page_count = true
  config.top_level_meta_page_count_key = :total_pages
end
