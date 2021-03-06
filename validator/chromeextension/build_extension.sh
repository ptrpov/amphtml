#!/bin/bash -ex
#
# Copyright 2016 The AMP HTML Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS-IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the license.
#
# A script to install dependencies and then build the extension.

echo 'Installing web components'
bower install

echo 'Polybuild AMP Validator'
polybuild amp-validator.html

echo 'Removing web components'
rm -rf bower_components

echo 'Done'
