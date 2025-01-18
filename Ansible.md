# HW по Ansible

## yaml
```yaml
- name: Homework Playbook
  hosts: netology-ml
  become: yes

  vars:
    packages:
      - net-tools
      - git
      - tree
      - htop
      - mc
      - vim

  tasks:
    - name: Test ping
      ansible.builtin.ping:

    - name: Update and install
      apt:
        update_cache: yes
        name: "{{ packages }}"
        state: present

    - name: Copy test.txt to /tmp directory
      copy:
        src: /home/test.txt
        dest: /tmp/test.txt

    - name: Groups
      group:
        name: "{{ item }}"
        state: present
      loop:
        - devops_1
        - test_1

    - name: Users
      user:
        name: "{{ item }}"
        group: "{{ item }}"
        home: "/home/{{ item }}"
        state: present
        create_home: yes
      loop:
        - devops_1
        - test_1
```

## Лог выполнения
```bash
ansible_user@50d736d101cb:~$ ansible-playbook -i /home/ansible_user/inventory.ini /home/ansible_user/homework.yaml
[WARNING]: Invalid characters were found in group names but not replaced, use -vvvv to see details

PLAY [Homework Playbook] ********************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
ok: [localhost]

TASK [Test ping] ****************************************************************************************************************************************************************
ok: [localhost]

TASK [Update and install] *******************************************************************************************************************************************************
changed: [localhost]

TASK [Copy test.txt to /tmp directory] ******************************************************************************************************************************************
changed: [localhost]

TASK [Groups] *******************************************************************************************************************************************************************
changed: [localhost] => (item=devops_1)
changed: [localhost] => (item=test_1)

TASK [Users] ********************************************************************************************************************************************************************
changed: [localhost] => (item=devops_1)
changed: [localhost] => (item=test_1)

PLAY RECAP **********************************************************************************************************************************************************************
localhost                  : ok=6    changed=4    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
```

## Смотрим в каталоге
На месте:
devops_1
test_1
```bash
ansible_user@50d736d101cb:/home$ ll
total 32
drwxr-xr-x 1 root         root         4096 Jan 18 17:53 ./
drwxr-xr-x 1 root         root         4096 Jan 18 17:53 ../
drwxr-x--- 1 ansible_user ansible_user 4096 Jan 18 17:57 ansible_user/
drwxr-x--- 2 devops_1     devops_1     4096 Jan 18 17:53 devops_1/
-rw-r--r-- 1 root         root           16 Jan 18 17:36 test.txt
drwxr-x--- 2 test_1       test_1       4096 Jan 18 17:53 test_1/
drwxr-x--- 2 ubuntu       ubuntu       4096 Nov 19 09:50 ubuntu/
```
