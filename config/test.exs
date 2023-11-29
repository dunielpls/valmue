import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :valmue_web, Valmue.Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "lLlJi90lnxPqw6ZklQoZCwOMr8N9k96EpuLBb8yCEF6b2Nec+U0Xh9oWadifrtxj",
  server: false

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web, Valmue.Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "3GPophJqufG8HK5rlat2Ulyy2Opxz58SmKdxIcHFAXQMrNvLzbpFaIhoyIsxEzjM",
  server: false
