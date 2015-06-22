# Charles Proxy SSL plugin for rbenv

Charles Proxy is a debugging HTTP proxy.
It can be configured to handle SSL traffic as well,
although browsers and other HTTP clients on the local system will then have to be configured to
recognize Charles' own SSL certificate,
lest they abort requests thinking they are being MITM'd.

In Charles' `Help` menu there is an option to install its SSL certificate into OS X Keychain.
After that is done, run:

```sh
rbenv charles-ssl
```

to have that same certificate installed in the copies of OpenSSL
that each of the locally installed Rubies is linked to.

Whenever a new Ruby version is installed via `rbenv install`,
this plugin will ensure that the SSL certificate is copied over.

This should help Ruby HTTP libraries perform requests flawlessly
even if they're being routed through Charles Proxy.
