In this step a script running in the background is installing JDK 8 and Cassandra 3.11.9. The script performs the following actions:

1. Remove JDK 11 (the base image for this exercise has JDK 11 installed by default. Cassandra 3.x *does not* support JDK 11)
2. Install JDK 8
3. Install Cassandra 3.11.9 and configure environment variables
4. Start Cassandra

When you see the message "Cassandra setup complete" you may continue to the next step.

![Setup Complete](./assets/setup-complete.jpg)