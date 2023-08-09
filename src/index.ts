import { registerPlugin } from '@capacitor/core';
import { CapacitorUtilitiesPlugin } from './definitions';

const CapacitorUtilities = registerPlugin<CapacitorUtilitiesPlugin>('CapacitorUtilities', {
  web: () => import('./web').then((m) => new m.CapacitorUtilitiesWeb()),
});

export * from './definitions';
export { CapacitorUtilities };
