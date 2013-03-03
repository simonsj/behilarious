#!/usr/bin/ruby
#
# sayhilariousthings.rb
#
# Jon Simons
# March 2, 2013

require 'time'

def Log(s)
  puts Time.now.utc.iso8601 + " " + s
  STDOUT.flush
end

gettext = File.join(File.dirname($0), "getRandomWiki")
#Log("gettext: " + gettext)

#voiceout = `say -v ? | awk -F"en_US" '{print $1}' | sed -e 's?  *$??g'`
#voices = voiceout.split(/\n/)

while 1 do
  #voice = voices.choice
  #Log("Voice: " + voice)

  text = `#{gettext}`
  Log("Text: " + text)

   #`say -v "#{voice}" "#{text}"`
   `say "#{text}"`

  sleep (60 * 8)
end
