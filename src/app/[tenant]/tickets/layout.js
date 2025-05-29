import { use } from "react";
import Nav from "./Nav";
import TenantName from "./TenantName";

export default function TicketsLayout({params, children}) {
    const { tenant } = use(params);
    return (
        <>
            <section style={{ borderBottom: "1px solid gray" }}>
                <TenantName tenantName="Packt Publishing" />
                <Nav tenant={tenant}/>
            </section>
            <section>{children}</section>
        </>
    );
}