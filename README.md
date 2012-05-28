Engine Application Composer
===========================

**EAC** is a set of Rails-engines and a 'Dummy-application' named `aec`.


Build your own Rails-app
------------------------

To build your own Rails-app based on AEC's engines fork `aec` from Github
and edit `aec/Gemfile`. Edit the section where engines are loaded and remark
all engines you will not use.

<pre>
[....]
# EACUSR ENGINE
gem "eacusr", path: File.expand_path('../../eacusr', __FILE__)
[....]
</pre>

And in `eac/config/routes.rb` edit the corresponding lines
to mount the used engines.

<pre>
Rails.application.routes.draw do
  mount Eacusr::Engine => "/eacusr"
end
</pre>

`eac` dummy-applicaton
======================

If you forked this project from Github you will see the
following directory-structure.

**/eac**
>  The dummy-applicaton to test the various engines

**/eacusr**
>  The User-engine implements /eacusr and supports a
>  user-model using omniAuth with several oauth-providers
>  preconfigured and omniauth-identity for local users


_More engines will follow_


Run the server
==============

<pre>
cd eac
rails server
</pre>

Run the specs
=============

Just run `rake` in the project's root-directory to run all engine's specs in a batch or change to one of the engine's directories and exec
`rspec spec/rspec_helper.rb spec/*/*_spec.rb`
