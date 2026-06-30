#!/bin/bash
set -e

# Disable all MPM modules
a2dismod mpm_event mpm_worker mpm_prefork || true

# Enable the required MPM (prefork is required for standard PHP/Apache)
a2enmod mpm_prefork

# Execute apache2-foreground
exec apache2-foreground
