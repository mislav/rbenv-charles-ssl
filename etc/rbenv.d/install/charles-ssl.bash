setup_charles_ssl_certificate() {
  rbenv charles-ssl "$VERSION_NAME" 2>/dev/null || true
}

after_install setup_charles_ssl_certificate
