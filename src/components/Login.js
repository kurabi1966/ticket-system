'use client';
// import { useRouter } from "next/navigation";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import Link from "next/link";
import { useRef } from "react";
import { useEffect } from "react";
import { useRouter } from "next/navigation";

export const Login = ({ isPasswordLogin }) => {

    const emailInputRef = useRef(null);
    const passwordInputRef = useRef(null);

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
    <form action={isPasswordLogin ? "/auth/pw-login" : "/auth/magic-link"} method="post"
        onSubmit={(event) => {
            isPasswordLogin && event.preventDefault();
            if (isPasswordLogin) {
                const email = emailInputRef.current.value;
                const password = passwordInputRef.current.value;
                supabase.auth
                    .signInWithPassword({
                        email,
                        password,
                    })
                    .then(({ data, error }) => {
                        if (error) {
                            alert(error.message);
                        }
                    });
            }
        }}
    >
        <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>Login</header>
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
            {isPasswordLogin && (
            <label htmlFor="password">
                Password
                <input
                ref={passwordInputRef}
                type="password"
                id="password"
                name="password"
                />
            </label>
            )}
        </fieldset>
        <p>
            {isPasswordLogin ? (
            <Link
                href={{
                pathname: "/",
                query: { magicLink: "yes" },
                }}
            >
                Go to Magic Link Login
            </Link>
            ) : (
            <Link
                href={{
                pathname: "/",
                query: { magicLink: "no" },
                }}
            >
                Go to Password Login
            </Link>
            )}
        </p>
        <button type="submit">
            Sign in with
            {isPasswordLogin ? " Password" : " Magic Link"}
        </button>
        <p>
            Don't have an account?{" "}
            <Link href="/auth/signup">Sign up</Link>
        </p>
        <p>
            <Link href="/auth/forget-password">Forgot Password?</Link>
        </p>
        </article>
    </form>
    );
};