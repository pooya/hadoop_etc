## Start HDFS daemons
# Format the namenode directory (DO THIS ONLY ONCE, THE FIRST TIME)
# ONLY ON THE NAMENODE NODE
$HADOOP_HOME/bin/hdfs namenode -format
# Start the namenode daemon
# ONLY ON THE NAMENODE NODE
$HADOOP_HOME/sbin/hadoop-daemon.sh start namenode
# Start the datanode daemon
# ON ALL SLAVES
$HADOOP_HOME/sbin/hadoop-daemon.sh start datanode
 
## Start YARN daemons
# Start the resourcemanager daemon
# ONLY ON THE RESOURCEMANAGER NODE
$HADOOP_HOME/sbin/yarn-daemon.sh start resourcemanager
# Start the nodemanager daemon
# ON ALL SLAVES
$HADOOP_HOME/sbin/yarn-daemon.sh start nodemanager
