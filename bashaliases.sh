#!/bin/#!/usr/bin/env bash
#
# Aliases
function mosbuild()
{
  mos build --local --verbose --platform $1
}

function otaupdate()
{
  echo $IP
  curl -v -F file=@build/fw.zip -F commit_timeout=60 http://${IP}/update
}

function otacommit()
{
  curl -v http://${IP}/update/commit
}
