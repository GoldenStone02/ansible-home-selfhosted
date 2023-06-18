rm ~/.ssh/known_hosts
chmod 0600 .vagrant/machines/default/virtualbox/private_key

ansible-playbook -i inventory.ini run.yml