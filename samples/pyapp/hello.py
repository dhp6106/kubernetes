import time
import subprocess
while True:
    print("Hello World!!")
    k_version = subprocess.getoutput("uname -r")
    print("Checking kernal version")
    time.sleep(3)
    print("Container kernel version is " , k_version)
