#!/usr/bin/env python3

import re
import pygatt

from argparse import ArgumentParser
from argparse import RawTextHelpFormatter

'''
Install dependencies with `pip install -r scripts/requirements.txt`.
Additional setup may be required to get pygatt operational. See below.

Permissions:
    The script may ask for your sudo password, to request control of Host BLE HW.
    Permissions must be in order, else scanning and connecting may fail.
    
    If the script complains about running "sudoless" hcitool, add the following to /etc/sudoers: 
    Make sure to replace fullpath of `hcitool` per your Host.
    ```
    > ## Setup sudoless pygatt
    > ALL     ALL=(ALL)       NOPASSWD: /usr/bin/hcitool
    ```
    Edit ith `visudo`, which does syntax checking before saving OS config (avoids headaches).
'''


class BleCliConsole:
    def __init__(self, n_scan=15):
        self.backend = pygatt.GATTToolBackend()
        self.backend.start()
        self.scan_results = []
        self.n_scan_results = n_scan
        self.connected_devices = []

    def discoverDevices(self):
        self.scan_results = self.backend.scan(run_as_root=True, timeout=5)[:self.n_scan_results]

    def printBondedDevices(self):
        pass

    def printConnectedDevices(self):
        pass

    def printDiscoveredDevices(self):
        i = 0
        for device in self.scan_results:
            print('[%2d] %s -- %s' % (i, str(device.get('address')), str(device.get('name'))))
            i += 1

    def scanDeviceServices(self, scan_index):
        pass

    def inputDeviceIndex(self):
        user_input = -1
        while user_input < 0 or len(self.scan_results) <= user_input:
            user_input = input('Device Index: %d')

        return user_input

    def getDeviceAddress(self, id):
        '''
        Get a device bt address from id which can be {bt_address, scan_index, name}
        '''

        if re.match(r'^([0-9a-fA-F]{2}:){5}([0-9a-fA-F]{2})$', id):
            return id.upper()
        else:
            i = 0
            for device in self.scan_results:
                if device['name'] == id or i == id:
                    return device['address']
        return None

    def connectDevice(self, id):
        address = self.getDeviceAddress(id)
        if address is None:
            print('No such device: "%s"' % id)
            return False

        print('Connecting to "%s"......' % address, end=None)
        try:
            device = self.backend.connect(address)
            self.connected_devices.append(device)
        except pygatt.exceptions.NotConnectedError:
            print('Failed')
            return False

        print('Success')
        return True

def configuredParser():
    parser = ArgumentParser(description= "Host-side BLE-CLI tools for interfacing AFR TXRX devices.\n\n"
                                         "subcommands:\n"
                                         "    'scan'       -- Scan then show discovered BLE devices.\n"
                                         "    'connect id' -- ID can be scan-index, address, or device name.\n",
                            formatter_class=RawTextHelpFormatter)

    parser.add_argument('subcommand', nargs=1, help='Subcommand {list|connect }')
    parser.add_argument('subargs', nargs='*', help='Subcommand arguments')
    parser.add_argument('-n', type=int, default=15, metavar='N_SCAN', help='Specify number of devices for scans.')
    return parser

def main():
    parser = configuredParser()
    args = parser.parse_args()

    # Service CLI requests
    cli = BleCliConsole(n_scan=args.n)
    if args.subcommand[0] == 'scan' and len(args.subargs) == 0:
        cli.discoverDevices()
        cli.printDiscoveredDevices()
    elif args.subcommand[0] == 'connect' and len(args.subargs) == 1:
        cli.discoverDevices()
        cli.connectDevice(args.subargs[0])
    else:
        print('usage: Unknown subcommand "%s"' % args.subcommand)
        parser.print_help()

if __name__ == '__main__':
    main()
