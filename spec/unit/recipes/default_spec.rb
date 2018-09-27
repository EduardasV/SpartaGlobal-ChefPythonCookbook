#
# Cookbook:: python
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should update all packages' do
      expect(chef_run).to update_apt_update('update')
    end

    it 'Should install python package' do
      expect(chef_run).to install_package('python')
    end

    it 'Should install python-pip package' do
      expect(chef_run).to install_package('python-pip')
    end

    it "should install libncurses5" do
      expect(chef_run).to install_package("libncurses5-dev")
    end
  end
end
