import {useEffect, useState} from "react";
import {DataTable} from "../common";
import {DisplayDriver} from "../../models/driver.ts";

export const Drivers = () => {
  const [drivers, setDrivers] = useState<DisplayDriver[]>([]);

  useEffect(() => {
    fetch("http://localhost:3000/drivers")
      .then(res => res.json())
      .then(setDrivers);
  }, []);

  return (
    <DataTable<DisplayDriver>
      data={drivers}
      keyMap={{nationalityIso3: "Nationality", dateOfBirth: "DOB", teamName: "Team"}}
      linkKeys={{teamName: "teams/:teamName"}} keysToOmit={["id", "biography", "teamId"]}/>
  );
};