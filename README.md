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
cd vagrant-capitains-dev
vi Vagrantfile
```

On Windows

```
cd c:\\Users\My Documents\JohnSmith\vagrant-capitains-dev
notepad Vagrantfile
```


3. In the text editor with the Vagrantfile open, find the following lines

    ```
    config.vm.synced_folder "/path/to/arethusa-example-data", "/arethusa-data/arethusa-example-data"
    config.vm.synced_folder "/path/to/arethusa-configs", "/arethusa-data/arethusa-configs"
    ```

4.
    Replace `/path/to/arethusa-example-data` with the path to your local clone of the arethusa-example-data repo.

    Replace `/path/to/arethusa-configs` with the path to your local clone of the canonical-latinLit repo.

5. You may also need to change local port mappings and network card settings. Instructions are provided in the Vagrantfile

## Run the Apps

On the host machine __from within the local cloned copy of the arethusa-vagrant repository__:

```
vagrant up
vagrant ssh
```

The vagrant ssh command will put you into the guest VM.

