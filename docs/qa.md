# Q & A

## Windows 怎麼安裝 Ansible？

Ansible 原生不支援拿 Windows 當作 Control Machine，不過我們可以透過 Docker 或 Vagrant 這類工具模擬 unix-like 的環境使用 Ansible。

> 請參閱 [Installation Guide — Ansible Documentation][installation_guide]。

[installation_guide]: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#control-node-requirements


## 可以在 WSL 上使用 Ansible 嗎？

我們雖能在 WSL 安裝 Ansible，並~~在很辛苦地微調後~~使用部份功能；但官方不建議。換句話說就是**技術上可行，但官方不保證獲得完整的功能**。

> 請參閱 [Windows Frequently Asked Questions - Ansible Documentation][windows_faq]
>
>> The Windows Subsystem for Linux is not supported by Ansible and should not be used for production systems.

[windows_faq]: https://docs.ansible.com/ansible/latest/user_guide/windows_faq.html#can-ansible-run-on-windows


## Ansible 可以管理 Windows 作業系統的機器嗎？

可以的，我們可以使用 Ansible 和 WinRM 來管理 Windows 7, 8.1, 10 和 Windows Server 2008, 2008 R2, 2012, 2012 R2, 2016 等作業系統。

> 請參閱 [Windows Guides — Ansible Documentation][windows_guides]。

[windows_guides]: http://docs.ansible.com/ansible/latest/user_guide/windows.html

<div style="text-align: center;">
Copyleft © from 2018 Ansible Taiwan User Group CC BY-NC-SA 3.0 TW.
</div>
