# frozen_string_literal: true

require 'spec_helper'

describe 'deferred_test' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:node) { "#{os_facts[:os]['name'].downcase}-#{os_facts[:os]['release']['major'].delete('.')}.corp.com" }
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_echo('API debug').with_message("the response was '{\"response\":\"i did a thing\"}'\n") }
    end
  end
end
