# frozen_string_literal : true

require 'rb-readline'
require 'pry'
require 'dotenv'
require 'watir'

Dotenv.load

browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set(ARGV.join(" "))
search_bar.send_keys(:enter)
