#!/usr/bin/env bash
#
# XBar plugin metadata
#
#  <xbar.title>DB Train status</xbar.title>
#  <xbar.version>v1.0.0</xbar.version>
#  <xbar.author>Morre</xbar.author>
#  <xbar.author.github>morremeyere</xbar.author.github>
#  <xbar.desc>Displays the status of the DB ICE train you are currently on.</xbar.desc>
#  <xbar.dependencies>jq</xbar.dependencies>
#  <xbar.abouturl>https://github.com/morremeyer/xbar-db-train-status</xbar.abouturl>

export PATH="/usr/local/bin:$PATH"
curl -s https://iceportal.de/api1/rs/status | jq -r '[ .speed ] | @sh' | xargs printf 'Speed: %s km/h\n'

curl -s https://iceportal.de/api1/rs/tripInfo/trip | jq -r '[ .trip.trainType, .trip.vzn ] | @sh' | xargs printf 'Train: %s %s\n'
