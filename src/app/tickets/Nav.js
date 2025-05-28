"use client";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import {getSupabaseBrowserClient} from "@supabase-utils/browserClient"
export default function Nav() {
    const router = useRouter();
    const handleLogout = async () => {
        await supabase.auth.signOut();
        router.push("/"); // redirect after logout
    };
    const supabase = getSupabaseBrowserClient();
    const pathname = usePathname();
    const activeProps = { className: "contrast" };
    const inactiveProps = { className: "secondary outline" };
    return (
        <nav>
            <ul>
                <li>
                    <Link role="button" href="/tickets" {...(pathname === "/tickets" ? activeProps : inactiveProps )}>Ticket List</Link>
                </li>
                <li>
                    <Link role="button" href="/tickets/new" {...(pathname === "/tickets/new" ? activeProps : inactiveProps )}>Create new Ticket
                    </Link>
                </li>
                <li>
                    <Link role="button" href="/tickets/users" {...(pathname === "/tickets/users" ? activeProps : inactiveProps )}>User List</Link>
                </li>
            </ul>
            <ul>
                <li>
                    <button className="secondary" onClick={handleLogout}>
                        Log out
                    </button>
                </li>
            </ul>
        </nav>
    );
}