# Python cookbook

## Requirements

- [x] Create a python cookbook that can provision a machine
- Run unit tests for:

  - [x] What Python version will install
  - [x] What Pip version will install
  - [x] The dependency libncurses5-dev will install
- Run integration tests for:

  - [x] Version install match
  - [x] Pip install
  - [x] libncurses5-dev install


## How to use
- In your projects Berksfile, include this line:
```ruby
cookbook "python", git: "git@github.com:RCollettSG/PythonCookbook.git"
```
- Run this line in your console:
```bash
berks vendor cookbooks
```
- This cookbook is now ready to provision! For vagrant use this in your Vagrantfile:
```ruby
config.vm.provision("chef_solo") do |chef|
    chef.add_recipe("python::default")
  end
```
