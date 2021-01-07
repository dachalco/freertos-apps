#!/usr/bin/env python3

import pygatt

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
    def __init__(self):
        self.backend = pygatt.GATTToolBackend()
        self.backend.start()
        self.scan_results = []

    def discoverDevices(self):
        self.scan_results = self.backend.scan(run_as_root=True, timeout=5)

    def listBondedDevices(self):
        pass

    def listConnectedDevices(self):
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

    def connectDevice(self, scan_index):
        assert 0 <= index < len(self.scan_results), 'Bad index:' + index
        assert 'address' in self.scan_results[index], 'Bad scan result: ' + str(self.scan_results[index])

        name = self.scan_results[index]['name']
        address = self.scan_resultsp[index]['address']
        print('Connecting to "%s" (%s)......' % (name, address), end=None)
        try:
            self.backend.connect(address, address_type=pygatt.BLEAddressType.random)
            print('Success')

            # Copy over the device. Device details at index i can change per scan
            self.connected_devices.append(self.scan_results[index])
        except pygatt.exceptions.NotConnectedError:
            print('Failed')

    def connect(self, bt_addr):
        pass

def main():
    cli = BleCliConsole()
    cli.discoverDevices()
    cli.printDiscoveredDevices()


if __name__ == '__main__':
    main()
