# Ansible

## Install Ansible

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

Another option is to use pip:
pip install ansible

## Eventually…

ansible-playbook --ask-become-pass bootstrap.yml

cat bootstrap.yml
- name: Bootstrap development environment
  hosts: localhost

  tasks:
  - name: Install packages with apt
    become: yes
    ansible.builtin.apt:
      name:
        - git
        - tmux
      state: present
