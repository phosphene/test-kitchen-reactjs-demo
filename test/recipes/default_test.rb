# # encoding: utf-8

# Inspec test for recipe react_demo::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }

  end
end

describe port(3000) do
  it { should be_listening }

end
