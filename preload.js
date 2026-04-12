// contextBridge 预留，后续可以暴露 Electron API 给前端
const { contextBridge } = require('electron')

contextBridge.exposeInMainWorld('cfpp', {
  version: process.env.npm_package_version || '1.0.0',
  platform: process.platform,
})
