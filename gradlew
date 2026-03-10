#!/usr/bin/env bash
##############################################################################
##
##  Gradle wrapper script for Unix
##
##  Based on the gradle wrapper script distributed as part of Gradle.
##
##  You can redistribute this script under the terms of the Gradle license.
##  See http://www.gradle.org for details.
##
##############################################################################

DIR=$(cd "$(dirname "$0")"; pwd)
APP_BASE_NAME="gradle"
APP_HOME="$DIR"

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

# Use the supplied Gradle distribution
GRADLE_HOME="$APP_HOME"

# Execute Gradle
if [ -n "$GRADLE_HOME" ]; then
  GRADLE_EXE="$GRADLE_HOME/bin/gradle"
else
  GRADLE_EXE="gradle"
fi

# Collect arguments
ARGS=("$@")

# Determine the Java command to use to run Gradle
if [ -n "$JAVA_HOME" ]; then
  JAVA="$JAVA_HOME/bin/java"
else
  JAVA="java"
fi

# Determine the Java command to use to run Gradle
if [ -x "$JAVA" ]; then
  JAVA="$JAVA"
else
  echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
  echo
  echo "Please set the JAVA_HOME variable in your environment to match the"
  echo "location of your Java installation."
  exit 1
fi

# For some unknown reason, the script breaks if we have spaces in the filenames. So we need to fix the filenames.
for i in "${!ARGS[@]}"; do
  ARGS[$i]=$(echo "${ARGS[$i]}" | sed 's/ /%20/g')
done

# Launch Gradle
exec "$JAVA" "${DEFAULT_JVM_OPTS}" "-Dorg.gradle.appname=$APP_BASE_NAME" "${GRADLE_OPTS}" -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "${ARGS[@]}"