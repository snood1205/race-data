import {ReactElement, ReactNode} from "react";
import {DataTableHead} from "./data-table-head.tsx";

interface Props<T> {
  data: T[];
  includeTimestamps?: boolean;
  keyMap?: Record<keyof T, string>;
  keysToOmit?: (keyof T)[];
  linkKeys?: Record<keyof T, string>;
}

const clearKeysToOmit = <T extends Record<string, ReactNode>>(headers: string[], keysToOmit: (keyof T)[]) => {
  keysToOmit.forEach(key => {
    const index = headers.indexOf(key as string);
    if (index !== -1) headers.splice(index, 1);
  });
};

export const DataTable = <T extends Record<string, ReactNode>>({
                                                                 data,
                                                                 includeTimestamps,
                                                                 keyMap,
                                                                 keysToOmit,
                                                               }: Props<T>): ReactElement | null => {
  if (data.length === 0) {
    console.error("No data provided to DataTable");
    return null;
  }
  const headers = Object.keys(data[0]);

  if (keysToOmit != null && !includeTimestamps) keysToOmit.push("createdAt", "updatedAt");
  else if (!includeTimestamps) keysToOmit = ["createdAt", "updatedAt"];

  if (keysToOmit != null) clearKeysToOmit(headers, keysToOmit);

  return (
    <div className="overflow-x-auto">
      <table className="min-w-full table-auto">
        <DataTableHead headers={headers} keyMap={keyMap}/>
        <tbody>
        {data.map((row, index) => (
          <tr key={index} className={index % 2 === 0 ? "bg-white" : "bg-gray-50"}>
            {headers.map((header, index) => (
              <td key={index} className="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                {row[header]}
              </td>
            ))}
          </tr>
        ))}
        </tbody>
      </table>
    </div>
  );
};