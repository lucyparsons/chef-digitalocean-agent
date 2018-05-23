# # encoding: utf-8

# Inspec test for recipe digitalocean-agent::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe service('do-agent') do
  it { should be_enabled }
end
