#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update 'update' do
  action :update
end

package 'python'
package 'python-pip'
package 'libncurses5-dev'
package 'libncursesw5-dev'
