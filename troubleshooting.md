#The error message you're encountering indicates that the connection to the specified URL is being refused. Here are some steps to diagnose and potentially fix the issue:Check if the Service is Running:

 #Ensure that the service you are trying to connect to on qu32975-rh9.llan.ll.mit.edu is running and listening on port 8443. 
    #You can do this by running:

      sudo netstat -tuln | grep 8443 

      #output should look like this

      tcp        0      0 0.0.0.0:8443            0.0.0.0:*               LISTEN
      
    #If the service is not running, you need to start it.


#Verify Firewall Settings

  #Ensure that the firewall on both your RHEL machine and the server at qu32975-rh9.llan.ll.mit.edu allows traffic on port 8443. 
  #You can check and modify the firewall settings using the following commands On your RHEL machine

    sudo firewall-cmd --zone=public --add-port=8443/tcp --permanent
    sudo firewall-cmd --reload

#Repeat the same on the server


#Check SELinux:
#If SELinux is enabled, it might be blocking the connection. You can temporarily disable SELinux to check if it is the cause of the issue:

  sestatus #to chrck if its running
  sudo setenforce 0 #to put on permissive move, set to one to put it back on enforcing mode


#If the connection works after disabling SELinux, you may need to adjust the SELinux policies


#Test Network Connectivity:
#Ensure that there are no network issues between your RHEL machine and the server. You can test this using ping and telnet:

  ping qu32975-rh9.llan.ll.mit.edu

#To test connectivity to port 8443

  telnet qu32975-rh9.llan.ll.mit.edu 8443

#If ping fails, there might be a network issue. If telnet fails, the service might not be running, or the port might be blocked.


#Verify URL and Certificates:
#Ensure that the URL is correct and that you have the necessary certificates if SSL/TLS is used.
#If there are issues with certificates, you may need to update them or configure your client to trust the server’s certificate.


#Retry with Debug Mode:
#Run your command with verbose or debug mode to get more details

  ansible-playbook -vvv your_playbook.yml

#This will provide more insight into where the connection is failing.

#if you get an error like below 
#Error: creating named volume "e732f67fcb0ce7fe57b92741ea9a81074fe93a0df9c2ec7bf429d5b4df4bef27": allocating lock for new volume: allocation failed; exceeded num_locks (2048)

run podman volume rm --all --force
