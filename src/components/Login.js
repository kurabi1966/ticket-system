'use client';
// import { useRouter } from "next/navigation";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import Link from "next/link";
import { useRef } from "react";

export const Login = ({ isPasswordLogin }) => {

    const emailInputRef = useRef(null);
    const passwordInputRef = useRef(null);

    const supabase = getSupabaseBrowserClient();
    return (
    <form
        onSubmit={(event) => {
            event.preventDefault();
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
                        } else {
                            alert("User logged in successfully");
                            console.log("User data:", data);
                            // Redirect or perform any other action after successful login
                            // For example, you can redirect to a dashboard page
                            window.location.href = "/tickets";
                            // const router = useRouter();
                            // router.push("/tickets");
                        }
                    });
            } else {
            alert("User wants to login with magic link");
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
        </article>
    </form>
    );
};