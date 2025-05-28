"use client";
import Link from "next/link";
import { usePathname } from "next/navigation";
import {getSupabaseBrowserClient} from "@supabase-utils/browserClient";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
export default function Nav() {
    const [userEmail, setUserEmail] = useState("");

    const handleLogout = async () => {
        await supabase.auth.signOut();
        router.push("/"); // redirect after logout
    };
    const supabase = getSupabaseBrowserClient();
    const pathname = usePathname();
    const activeProps = { className: "contrast" };
    const inactiveProps = { className: "secondary outline" };

    const router = useRouter();
    useEffect(() => {
        const getUser = async () => {
            const { data: { user } } = await supabase.auth.getUser();
            if (user) {
                setUserEmail(user.email);
            }
        };
        getUser();

        const {
            data: { subscription },
        } = supabase.auth.onAuthStateChange((event, session) => {
            if (event === "SIGNED_OUT") {
                router.push("/");
            }
        });

        return () => subscription.unsubscribe();
    }, []);

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
                    <div className="nav-user-info">
                    {userEmail && <span className="text-sm">Signed in as: {userEmail}</span>}
                    <Link
                        role="button"
                        href="/logout"
                        prefetch={false}
                        className="secondary"
                        onClick={(event) => {
                            event.preventDefault();
                            supabase.auth.signOut();
                        }}
                    >
                        Log out
                    </Link>
                    </div>
                </li>
            </ul>
        </nav>
    );
}