import {ReactNode} from "react";

export interface Driver extends Record<string, ReactNode> {
  id: number;
  name: string;
  nationalityIso3?: string;
  dateOfBirth?: string;
  teamId: number;
  biography?: string;
  createdAt: string;
  updatedAt: string;
}

export type DisplayDriver = Omit<Driver, "createdAt" | "updatedAt"> & { teamName: string };

export type WithDriver<T extends { driverId: number }> = Omit<T, "driverId"> & { driver: Driver };