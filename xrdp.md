# 在arch上远程连接
## 1. 安装xrdp核心包
```bash
yay -S xrdp
```

## 2. 安装Xorg后端（三选一即可）
- Inter与AMD核显（支持硬件加速）
```bash
yay -S xortxrdp-glamor
```
- 只使用CPU（CPU占用率很高）
```bash
yay -S xorgxrdp
```
- Nvidia独显
```bash
yay -S xorgxrdp-nvidia
```

## 3. 安装Xorg-xinit
```bash
sudo pacman -S xorg-xinit
```
...失败了，这个方法，未来再试一下，现在还不行

