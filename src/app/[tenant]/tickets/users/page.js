'use client';
import { IconCheck, IconUserOff } from "@tabler/icons-react";

const users = [
    {
        id: 1,
        name: "Alice Ling",
        job: "Security Engineer",
        isAvailable: true,
    },
    {
        id: 2,
        name: "John Ling",
        job: "Software Engineer",
        isAvailable: false,
    },
    {
        id: 3,
        name: "Smith Orcher",
        job: "Solution Architect",
        isAvailable: true,
    },
    {
        id: 4,
        name: "Sam Barnet",
        job: "Full Stack Developer",
        isAvailable: false,
    }
];
export default function UserList() {
    return (
        <>
            <h2>User List</h2>
            <table>
                <thead>
                    <tr>
                        <th style={{width: "120px"}}>Available</th>
                        <th>Name</th>
                        <th>Job</th>
                        {/* <th>Available</th> */}
                    </tr>
                </thead>
                <tbody>
                    {users.map((user) => (
                        <tr key={user.id}>
                            <td style={{ color: !user.isAvailable ? "red" : undefined}} >
                                {user.isAvailable ? <IconCheck /> : <IconUserOff />}
                            </td>
                            <td>{user.name}</td>
                            <td>{user.job}</td>
                            {/* <td>{user.isAvailable ? "Yes" : "No"}</td> */}
                        </tr>
                    ))}
                </tbody>
            </table>
        </>
    )
}