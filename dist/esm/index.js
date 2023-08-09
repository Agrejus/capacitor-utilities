import { registerPlugin } from '@capacitor/core';
const CapacitorUtilities = registerPlugin('CapacitorUtilities', {
    web: () => import('./web').then((m) => new m.CapacitorUtilitiesWeb()),
});
export * from './definitions';
export { CapacitorUtilities };
//# sourceMappingURL=index.js.map