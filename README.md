Engine Application Composer
===========================

**EAC** is a set of Rails-engines and a 'Dummy-application' named `eac`.


Build your own Rails-app
------------------------

To build your own Rails-app based on EAC's engines fork `eac` from Github
and edit `eac/Gemfile`. Edit the section where engines are loaded and remark
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


Create your own Engine
======================

> *In near future, there should be a generator to do this steps in one command.*

In project's root-path do

<pre>
  rails plugin new eacYOUR_ENGINE --mountable --skip-testunit --skipactiverecord -T --dummy-path=spec/dummy
</pre>

Then add the following line to `eac/eac/Gemfile`

<pre>
  gem "eacYOUR_ENGINE", path: File.expand_path('../../eacYOUR_ENGINE', __FILE__)
</pre>

Add the following block at the end of `eac/eacYOUR_ENGINE/Rakefile`

<pre>
  task :default => :rspec 

  task :rspec do
    system "rspec spec/spec_helper.rb spec/*/*_spec.rb"
  end
</pre>

Copy an existing spec_helper.rb to `eac/eac/YOUR_ENGINE/spec/spec_helper.rb`
You can copy from `eac/eacusr/spec/spec_helper` and change the file near bottom to

<pre>
  config.include EacYOUR_ENGINE::Engine.routes.url_helpers
</pre>

Run `rails g rspec:install` in `eac/eacYOUR_ENGINE` and 

* create eac/eacYOUR_ENGINE/spec/integration
* copy eac/eacusr/spec/integration/eacusr_engine_spec.rb to eac/eacYOUR_ENGINE/spec/integration/eacYOUR_ENGINE_spec.rb and edit the file to fit the engine's name.


Start developing your engine in `eac/eacYOUR_ENGINE`. While developing you can run `rake` in 
the project's root-path to test the dummy-app using your engine.

Run the server
==============

<pre>
cd eac
rails server
</pre>

and visit http://0.0.0.0:3000

Run the specs
=============

Just run `rake` in the project's root-directory to run all engine's specs in a batch or change to one of the engine's directories and exec
`rspec spec/rspec_helper.rb spec/*/*_spec.rb`
