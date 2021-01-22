[ec2-user@ip-172-31-81-232 pyapp]$ cat  hello.py 
import  time
import  subprocess

while  True:
    print("Hello world")
    k_version=subprocess.getoutput('uname -r')
    print("checking kernel version ")
    time.sleep(3)
    print("container kernel version is ",k_version)