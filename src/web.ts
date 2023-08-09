import { WebPlugin } from '@capacitor/core';
import { CapacitorUtilitiesPlugin } from './definitions';

export class CapacitorUtilitiesWeb extends WebPlugin implements CapacitorUtilitiesPlugin {

  constructor() {
    super({
      name: 'CapacitorUtilities',
      platforms: ['web'],
    });
  }

  async getDeviceSpecifications() {
    return {
      physicalMemory: 'deviceMemory' in navigator && typeof navigator.deviceMemory === "number" ? navigator.deviceMemory : -1
    }
  }
}