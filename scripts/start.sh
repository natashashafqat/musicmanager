#!/bin/bash -ex

./gradlew build -x test --continuous --quiet & 2>1 >/dev/null
./gradlew bootRun -x test