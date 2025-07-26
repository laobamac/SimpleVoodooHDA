# SimpleVoodooHDA  
一键在 macOS Monterey – Tahoe 部署 VoodooHDA 声卡驱动  

## 下载  
- [Releases](https://github.com/laobamac/SimpleVoodooHDA/releases) 直接获取预编译版本  
- 或克隆仓库后执行 `Package.command` 自行打包  

## 使用方法  
1. 关闭 SIP  
   - 将 `csr-active-config` 设为 `03080000` 或 `850A0000`  
2. 强烈建议禁用或移除 AppleALC.kext  
3. 运行下载好的安装包，或执行 `Package.command` 后安装生成的包  

## 致谢  
@chris1111 提供核心脚本与驱动
