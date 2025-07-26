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

## 截图
- macOS Tahoe版本：
<img width="1240" height="896" alt="SVHTahoe" src="https://github.com/user-attachments/assets/5c523c8d-f1f4-44a4-9778-f512e61022a2" />

- macOS Monterey-Sequoia版本：
<img width="1240" height="896" alt="SVHOld" src="https://github.com/user-attachments/assets/45ce10cf-5904-4608-bb71-9e614f43d14a" />


## 致谢  
@chris1111 提供核心脚本与驱动
