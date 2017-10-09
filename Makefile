REPO="danyelmorales/vagrant-centos-java"
NAMED="centos_java_dan"

.PHONY: all
all:
	make clean 
	make build  
	make run 

.PHONY: rebuild
rebuild:
	vagrant destroy
	vagrant up  
	vagrant provision   
	vagrant rsync 

.PHONY: build	
build:
	vagrant up  
	vagrant provision   
	vagrant rsync  
	
.PHONY: clean
clean:
	if [ -a ".vagrant" ] ; \
	then \
	  rm -r ".vagrant" ; \
	fi \
	
.PHONY: reload
reload:
	vagrant reload --provision
	vargant rsync

.PHONY: run
run:
	vagrant ssh
