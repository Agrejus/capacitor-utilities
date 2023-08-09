import { WebPlugin } from '@capacitor/core';
import { CapacitorUtilitiesPlugin } from './definitions';
export declare class CapacitorUtilitiesWeb extends WebPlugin implements CapacitorUtilitiesPlugin {
    constructor();
    getDeviceSpecifications(): Promise<{
        physicalMemory: number;
    }>;
}
