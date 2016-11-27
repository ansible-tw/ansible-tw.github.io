# 安裝 Ansible

在使用 Ansible 管理機器 (managed node) 之前，我們需要在主控台 (Control Machine) 和 managed node 裡安裝 Python 和 OpenSSH。

以下依套件管理工具名稱進行排列。

---

## Apk (Alpine Linux)

一般在精簡的 Alpine Linux 不會預載 `sudo`，請使用 **root** 身份進行安裝；若想使用較新的版本，可改用 **Pip** 的方式進行安裝。  

1. 安裝 Ansible。
    
        $ apk add ansible

## Apt (Ubuntu) 

1. 安裝 `add-apt-repository` 必要套件。

        $ sudo apt-get install python-software-properties software-properties-common

2. 使用 Ansible 官方的 PPA 套件來源。

        $ sudo add-apt-repository ppa:ansible/ansible -y; sudo apt-get update

3. 安裝 Ansible。
    
        $ sudo apt-get install ansible

## Homebrew (macOS)

1. 請先安裝 [homebrew](http://brew.sh/index_zh-tw.html)，已安裝者請略過。

        $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. 安裝 Ansible。

        $ brew install ansible

## Pacman (Arch Linux)

1. 安裝 Ansible。

        $ sudo pacman -S --noconfirm ansible

## Pip (Python)

1. 請先安裝 [pip](https://pypi.python.org/pypi/pip)，已安裝者請略過。

        $ sudo easy_install pip

        # Debian, Ubuntu
        $ sudo apt-get install -y python-pip

2. 升級 pip。

        $ sudo pip install -U pip

3. 安裝 Ansible。
        
        $ sudo pip install ansible

## Portage (Gentoo)

若想使用較新的版本，可改用 **Pip** 的方式進行安裝。

1. 安裝 Ansible。

        $ emerge ansible

## RPM Build (CentOS)

若不想費心自己編 rpm，可改用 **Yum** 或 **Pip** 的方式進行安裝。

1. 安裝編譯相關套件。

        $ sudo yum install -y rpm-build make asciidoc git python-setuptools python2-devel python-jinja2

2. 從 GitHub 取得 Ansible 的原始碼 (source code)。

        $ git clone git://github.com/ansible/ansible.git --recursive

3. 編譯並打包成 rpm。

        $ cd ansible/ && make rpm

4. 安裝 Ansible。

        $ sudo rpm -ivh rpm-build/ansible-*.git*.noarch.rpm

## Yum (CentOS)

在 CentOS 裡，除了透過自行編譯、Pip 的方式安裝 Ansible，我們還可以透過新增第三方套件來源的方式進行安裝。

1. 新增 `epel-release` 第三方套件來源。

        $ sudo yum install -y epel-release

2. 安裝 Ansible。

        $ sudo yum install -y ansible

## Zypper (openSUSE)

1. 查詢相關套件和版本。

        $ zypper search -s ansible
        ...

        S | Name    | Type       | Version      | Arch   | Repository
        --+---------+------------+--------------+--------+------------------
          | ansible | package    | 1.9.3-1.1    | noarch | OSS

2. 安裝 Ansible。(系統預設版本)
    
        $ sudo zypper -n install ansible

        # -n: 不互動直接安裝。

3. 若想使用較新的版本，可手動新增 `systemsmanagement` 的套件來源。URL 的部份請配合 openSUSE 版本，例如 openSUsE_Leap_42.1， 

        $ sudo zypper addrepo -Gf http://download.opensuse.org/repositories/systemsmanagement/openSUSE_Leap_42.1/systemsmanagement.repo

        # -G: 不檢查 GPG 驗證，請依情況使用。
        # -f: 啟用自動更新，預設為停用。

4. 安裝 (和升級) Ansible。

        $ sudo zypper -n install ansible

5. 再次查詢相關套件和版本。

        $ zypper search -s ansible
        ...

        S | Name    | Type       | Version      | Arch   | Repository
        --+---------+------------+--------------+--------+------------------
        i | ansible | package    | 2.2.0.0-56.1 | noarch | systemsmanagement
        v | ansible | package    | 1.9.3-1.1    | noarch | OSS
          | ansible | srcpackage | 2.2.0.0-56.1 | noarch | systemsmanagement

        # i 為已安裝套件。

# 驗證

1. 驗證 Ansible 版本。

        $ ansible --version

2. 來印出個 `Hello World` 吧！

        $ ansible localhost -m command -a 'echo Hello World'
         [WARNING]: provided hosts list is empty, only localhost is available

        localhost | SUCCESS | rc=0 >>
        Hello World

# Reference

- [Installation — Ansible Documentation](http://docs.ansible.com/ansible/intro_installation.html)

<div style="text-align: center;">
Coypleft © from 2016 Ansible Taiwan User Group CC BY-NC-SA 3.0 TW.
</div>

