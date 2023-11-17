import {ReactNode} from "react";

interface Props<T> {
  headers: string[];
  keyMap?: Record<keyof T, string>;
}

export const DataTableHead = <T extends Record<string, ReactNode>>({headers, keyMap}: Props<T>) => {
  const hasKeyMap = keyMap != null;
  return (
    <thead className="bg-gray-100">
    <tr>
      {headers.map((header, index) => (
        <th key={index} className="px-6 py-3 text-left text-xs front-medium text-gray-500 uppercase tracking-wider">
          {hasKeyMap ? keyMap[header] ?? header : header}
        </th>
      ))}
    </tr>
    </thead>
  );
};