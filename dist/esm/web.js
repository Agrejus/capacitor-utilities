import { WebPlugin } from '@capacitor/core';
export class CapacitorUtilitiesWeb extends WebPlugin {
    constructor() {
        super({
            name: 'CapacitorUtilities',
            platforms: ['web'],
        });
    }
    async getDeviceSpecifications() {
        return {
            physicalMemory: 'deviceMemory' in navigator && typeof navigator.deviceMemory === "number" ? navigator.deviceMemory : -1
        };
    }
}
//# sourceMappingURL=web.js.map