# 安裝 Ansible

在使用 Ansible 管理機器 (managed node) 之前，我們需要在主控台 (Control Machine) 和 managed node 裡安裝 Python 和 OpenSSH。

以下依套件管理工具名稱進行排列。

---

## Apt (Ubuntu) 

1. 安裝 `add-apt-repository` 必要套件。

        $ sudo apt-get install python-software-properties software-properties-common
    
2. 使用 Ansible 官方的 PPA 套件來源。

        $ sudo add-apt-repository ppa:ansible/ansible; sudo apt-get update
    
3. 安裝 Ansible。    
    
        $ sudo apt-get install ansible

## Homebrew (macOS)

1. 請先安裝 [homebrew](http://brew.sh/index_zh-tw.html)，已安裝者請略過。

        $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. 安裝 Ansible。

        $ brew install ansible

## Pip (Python)

1. 請先安裝 [pip](https://pypi.python.org/pypi/pip)，已安裝者請略過。

        $ sudo easy_install pip

2. 安裝 Ansible。
        
        $ sudo pip install ansible

## Yum (CentOS)

若不想費心自己編 rpm，可改用 **Pip** 的方式進行安裝。

1. 安裝編譯相關套件。

        $ sudo yum install rpm-build make asciidoc git python-setuptools python2-devel python-jinja2

2. 從 GitHub 取得 Ansible 的原始碼 (source code)。

        $ git clone git://github.com/ansible/ansible.git --recursive

3. 編譯並打包成 rpm。

        $ cd ansible/ && make rpm

4. 安裝 Ansible。

        $ sudo rpm -ivh rpm-build/ansible-*.git*.noarch.rpm

## Zypper (openSUSE)
    
1. 安裝 Ansible。    
    
        $ sudo zypper install ansible

---

## Reference

- [Installation — Ansible Documentation](http://docs.ansible.com/ansible/intro_installation.html)

<div style="text-align: center;">
Coypleft © from 2016 Ansible Taiwan User Group CC BY-NC-SA 3.0 TW.
</div>

