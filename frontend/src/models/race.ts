export interface Race {
  id: number;
  name: string;
  date: Date;
  trackId: number;
  createdAt: Date;
  updatedAt: Date;
}

export type WithRace<T extends { raceId: number }> = Omit<T, "raceId"> & { race: Race };