export type Status = "DSQ" | "DNF" | "DNS" | "DNQ" | "DNPQ" | "WD";

export interface RaceResult {
  id: number;
  raceId: number;
  driverId: number;
  position?: number;
  status?: Status;
  intervalMs?: number;
  createdAt: Date;
  updatedAt: Date;
}