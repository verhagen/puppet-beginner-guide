#!/bin/bash
if grep -q "192.168.50.40" /etc/hosts
then
  # found
  echo "hosts entries found"
else
  # not found
  echo "192.168.50.40  puppet.learning.local  puppet" >> /etc/hosts
  echo "192.168.50.42  agent.learning.local  agent" >> /etc/hosts
fi