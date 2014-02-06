haveged Puppet module
=====================

[![Build Status](https://secure.travis-ci.org/gini/puppet-haveged.png)](http://travis-ci.org/gini/puppet-haveged)

Overview
--------

A Puppet module to install and manage [haveged](http://www.issihosts.com/haveged/), a simple entropy daemon.

Currently this module only installs the haveged package and starts the service (dependent on the class parameters).


Usage
-----

Example:

    class { 'haveged': }

    or

    include haveged


Supported Platforms
-------------------

The module has been tested on the following operating systems. Testing and patches for other platforms are welcome.

* Debian Linux 6 (squeeze)
 * only trough squeeze-backports which are automatically installed as well
* Debian Linux 7 (wheezy)
* Debian Linux 8 (jessie)


License
-------

Copyright (c) 2013 Gini GmbH

This script is licensed under the Apache License, Version 2.0.

See http://www.apache.org/licenses/LICENSE-2.0.html for the full license text.


Support
-------

Please log tickets and issues at our [project site](https://github.com/gini/puppet-haveged/issues).
