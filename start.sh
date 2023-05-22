#!/usr/bin/env bash
set -e

supervisord -c /etc/supervisor/conf.d/supervisord.conf
