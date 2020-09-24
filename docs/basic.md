# Hello Ansible

在你安裝好 Ansible 之後，本章節指引你設定基本的設定檔，然後執行第一個 Ansible 指令。


---

## 基礎 Ansible 基礎

在 Ansible 1.3 之後的版本會利用本地的 OpenSSH 來與遠端溝通，因此 ~/.ssh/config 內的設定會影響到 Ansible 的連線方式。但是如果你的主控台(control machine)是一些企業版本，(譬如 RedHat Enterprise Linux 或是 CentOS)，當中的 OpenSSH 可能會因為版本太舊所以無法支援 ControlPersist 的功能，這時候 Ansible 會使用舊的 'paramiko' 模組 (Python 實做的)。如果你想要 Ansible 能支援比較多功能，請將主控台使用較新版本的作業系統（譬如 Fedora 或是 Ubuntu 等)，

請將所有 node 加入 /etc/ansible/hosts, 格式像這樣:

	192.0.2.50
	aserver.example.org
	bserver.example.org

你要確認上述清單中的主機都有將 SSH Key 放到 authorized_keys 中了（如果你想要用 pem 檔案來認證連線的話，您可以使用 Ansible 的 --private-key 的選項來設定）。

測試 ping 你的所有 node

	$ ansible all -m ping

Ansible 會使用目前的使用者名稱，就像你手動輸入 SSH 連線那樣，如果你想要改變 SSH 的使用者名稱，請使用 '-u' 參數。

你還可以 sudo 模式，如下：

	# 用 bruce 登入
	$ ansible all -m ping -u bruce
	# 用 bruce登入，然後 sudo 成 root
	$ ansible all -m ping -u bruce --sudo
	# 用 bruce登入，然後 sudo 成 batman
	$ ansible all -m ping -u bruce --sudo --sudo-user batman

	# 最新的 Ansible 已經把 sudo 移除，改使用 -b
	# 用 bruce登入，然後 sudo 成 root
	$ ansible all -m ping -u bruce -b
	# 用 bruce登入，然後 sudo 成 batman
	$ ansible all -m ping -u bruce -b --become-user batman

下面命令會嘗試在全部的主機執行 '/bin/echo hello' 指令

	$ ansible all -a "/bin/echo hello"

恭喜你！已經完成基本學習，繼續往下走吧！

    
<div style="text-align: center;">
Coypleft © from 2016 Ansible Taiwan User Group CC BY-NC-SA 3.0 TW.
</div>

