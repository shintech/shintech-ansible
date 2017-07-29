## shintech-ansible

### Synopsis

Deploys shintech applications

### Usage

*First time use - uncomment these lines in roles/nginx/tasks/main.yml to run certbot

    - name: certbot
      environment:
        DOMAIN: "{{ domain }}"
        EMAIL: "{{ email }}"
      script: certbot.sh

*Start script

    ansible-playlist -i inventory/web site.yml
