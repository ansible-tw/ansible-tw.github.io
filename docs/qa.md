# Q & A

## Ansible 可以管理 Windows 作業系統的機器嗎？

可以的，我們可以使用 Ansible 和 WinRM 來管理 Windows 7, 8.1, 10 和 Windows Server 2008, 2008 R2, 2012, 2012 R2, 2016 等作業系統。

> 請參閱 [Windows Guides — Ansible Documentation][windows_guides]。

[windows_guides]: http://docs.ansible.com/ansible/latest/user_guide/windows.html

## Windows 怎麼安裝 Ansible？

Ansible 原生不支援拿 Windows 當作 Control Machine，不過我們可以透過 Docker 或 Vagrant 這類工具模擬 unix-like 的環境使用 Ansible。

> 請參閱 [Installation Guide — Ansible Documentation][installation_guide]。

[installation_guide]: http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#control-machine-requirements


<div style="text-align: center;">
Copyleft © from 2018 Ansible Taiwan User Group CC BY-NC-SA 3.0 TW.
</div>
