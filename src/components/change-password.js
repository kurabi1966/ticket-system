'use client';
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import Link from "next/link";
import { useRef } from "react";
import { useEffect } from "react";
import { useRouter } from "next/navigation";

export const ChangePassword = () => {

    const emailInputRef = useRef(null);

    const supabase = getSupabaseBrowserClient();

const router = useRouter();
    useEffect(() => {
        const {
            data: { subscription },
        } = supabase.auth.onAuthStateChange((event, session) => {
            if (event === "SIGNED_IN") {
                router.push("/tickets");
            }
        });

        return () => subscription.unsubscribe();
    }, []);
    
    return (
    <form action="/auth/pw-recovery" method="post">
        <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>Reset Password</header>
        <fieldset>
            <label htmlFor="email">
            Email
            <input
                ref={emailInputRef}
                type="email"
                id="email"
                name="email"
                required />
            </label>
        </fieldset>
        <button type="submit">
            Reset your password
        </button>
        <p>
            <Link href="/">Login</Link>
        </p>
        </article>
    </form>
    );
};