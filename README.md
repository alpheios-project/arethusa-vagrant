# arethusa-vagrant
Vagrant setup for Arethusa

## Prerequisites
* [Vagrant](https://www.vagrantup.com/downloads.html)
* [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* an ssh client 
    * comes with OS/X and Linux. On Windows you can try [Putty](https://www.vagrantup.com/docs/getting-started/)
* a local clone of the following example data and arethusa-configs repositories
    * https://github.com/alpheios-project/arethusa-example-data
    * https://github.com/alpheios-project/arethusa-configs

## Installation:

1. Clone this repository
    ```
    git clone https://github.com/alpheios-project/arethusa-vagrant
    ```

2. Edit the file named `Vagrantfile` in the newly cloned repository in a text editor. The following are example command-line instructions, but you can also navigate there in your File Explorer/Finder and use whatever text editor you are comfortable with.

    On OS/X or Linux:

    ```
    cd arethusa-vagrant
    vi Vagrantfile
    ```

    On Windows

    ```
    cd c:\\Users\My Documents\JohnSmith\arethusa-vagrant
    notepad Vagrantfile
    ```


3. In the text editor with the Vagrantfile open, find the following lines

    ```
    config.vm.synced_folder "/path/to/arethusa-example-data", "/arethusa-example-data"
    config.vm.synced_folder "/path/to/arethusa-configs", "/arethusa-configs"
    ```

4. Edit the paths to your local github clones of the example data and arethusa-configs

    Replace `/path/to/arethusa-example-data` with the path to your local clone of the arethusa-example-data repo.

    Replace `/path/to/arethusa-configs` with the path to your local clone of the arethusa-configs repo

5. You may also need to change local port mappings and network card settings. Instructions are provided in the Vagrantfile

6. Verify installation 
   
   You should be able to load the following in your browser: [http://localhost:8081/arethusa/app/#/vagrant?doc=1.2&s=2](http://localhost:8081/arethusa/app/#/vagrant?doc=1.2&s=2)

   N.B. The vagrant config is currently a READ-ONLY file setup.

## Testing Arethusa Config Changes

1. Create a branch on your local clone of the arethusa-example-data repo
2. Add a treebank file for testing into the arethusa-example-data/data/treebanks directory (make sure the treebank/@format attribute is set to the name of the format you want to test
3. Create a branch on your local clone of the arethusa-configs repo
4. Add/update your files
5. Build on the vagrant box:

    ```
    vagrant ssh  (or on windows via putty telnet to localhost:2222 login as vagrant/vagrant)
    
    cd /arethusa-configs
    
    git checkout yourbranch
    
    rvm use 2.0
    
    rake build
    ```
   
6. Verify that your new/updated file is in the /arethusa-configs/dist directory 
7. Load your testing treebank file in the local arethusa instance. E.g. [http://localhost:8081/arethusa/app/#/vagrant?doc=newfile&s=2](http://localhost:8081/arethusa/app/#/vagrant?doc=newfile&s=1)
    
