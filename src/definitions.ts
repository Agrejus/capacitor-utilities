
export interface DeviceSpecifications {
  physicalMemory: number;
}
export interface CapacitorUtilitiesPlugin {
  getDeviceSpecifications(): Promise<DeviceSpecifications>;
}