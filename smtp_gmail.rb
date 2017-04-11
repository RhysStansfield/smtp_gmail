require 'pony'

to = ARGV[0]
from = ARGV[1] || ENV['GMAIL_DEFAULT_FROM']

opts = {
  to: to,
  from: from,
  subject: 'Derp',
  body: 'Will it work?!?!?!',
  via: :smtp,
  via_options: {
    address: 'smtp.gmail.com',
    port: '587',
    enable_starttls_auto: true,
    user_name: ENV['GMAIL_SMTP_USERNAME'],
    password: ENV['GMAIL_SMTP_PASSWORD'],
    authentication: :login,
    domain: "HELO"
  }
}
puts opts
Pony.mail(opts)
