#!/usr/bin/ruby
#
# sayhilariousthings.rb
#
# Jon Simons
# March 2, 2013

gettext = File.join(File.dirname($0), "getRandomWiki")
puts("gettext: " + gettext)

#voiceout = `say -v ? | awk -F"en_US" '{print $1}' | sed -e 's?  *$??g'`
#voices = voiceout.split(/\n/)

while 1 do
  #voice = voices.choice
  #puts("Voice: " + voice)

  text = `#{gettext}`
  puts("Text: " + text)
  STDOUT.flush

   #`say -v "#{voice}" "#{text}"`
   `say "#{text}"`

  puts("Sleeping now...")
  STDOUT.flush

  sleep 5
end
