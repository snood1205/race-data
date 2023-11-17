export interface Track {
  id: number;
  name: string;
  location?: string;
  lengthKm?: number;
  lapRecordMs?: number;
  mapUrl?: string;
  createdAt: Date;
  updatedAt: Date;
}

export type WithTrack<T extends { trackId: number }> = Omit<T, "trackId"> & { track: Track };