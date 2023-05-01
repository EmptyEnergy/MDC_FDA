#!/bin/sh
openssl dgst -sign key.pem -out DeveloperDiskImageModified_15.6.dmg.signature -binary -sha1 DeveloperDiskImageModified_15.6.dmg
