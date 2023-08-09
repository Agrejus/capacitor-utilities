import { registerPlugin } from '@capacitor/core';
import { CameraPreviewPlugin } from './definitions';

const CameraPreview = registerPlugin<CameraPreviewPlugin>('CapacitorUtilities', {
  web: () => import('./web').then((m) => new m.CameraPreviewWeb()),
});

export * from './definitions';
export { CameraPreview };
