#!/bin/sh

export CLASSPATH=build/libs/DemoFX.jar

# May need to set -Xmx1024m on low RAM  machines
"$JAVA_HOME/bin/java" -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintGCDetails -XX:+PrintTenuringDistribution -Xloggc:demofx.gc.log -jar $CLASSPATH $@
