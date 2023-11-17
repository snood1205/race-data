export interface Team {
  id: number;
  name: string;
  headquarters?: string;
  founded?: number;
  championships?: number;
  createdAt: Date;
  updatedAt: Date;
}

export type WithTeam<T extends { teamId: number }> = Omit<T, "teamId"> & { team: Team };