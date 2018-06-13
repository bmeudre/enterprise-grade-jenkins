FROM jenkins/jenkins:2.127

USER root

RUN apt-get update && apt-get install -y sudo nfs-client && rm -rf /var/lib/apt/lists/*

RUN usermod -aG sudo jenkins

RUN echo "" >> /etc/sudoers
RUN echo "# " >> /etc/sudoers
RUN echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER jenkins

COPY mount-nfs.sh /usr/local/bin/mount-nfs.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/mount-nfs.sh"]
