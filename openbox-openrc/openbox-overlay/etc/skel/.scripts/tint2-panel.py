import os
panelFile = open("/usr/bin/panel", 'w')
panelFileContents = """#!/bin/sh
tint2"""
panelFile.write(panelFileContents)
panelFile.close()
os.system("chmod +x /usr/bin/panel")
