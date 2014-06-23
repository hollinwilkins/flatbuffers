#!/bin/sh
cat <<-LICENSE
Copyright 2014 Google Inc. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
LICENSE

echo
echo Compile then run the Java test.

testdir=$(dirname $0)

if [[ "$testdir" != "." ]]; then
	echo error: must be run from inside the ./tests directory
	echo you ran it from `pwd`
	exit 1
fi

javac -classpath ${testdir}/../java:${testdir} JavaTest.java
java -classpath ${testdir}/../java:${testdir} JavaTest