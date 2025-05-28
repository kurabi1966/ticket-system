import Link from "next/link";
export default function ErrorPage({ searchParams }) {
    const { type } = searchParams;
    const knownErrors = ["login-failed"];
    return (
    <div style={{ textAlign: "center" }}>
        <h1>Ooops!</h1>
        {type === "magiclink" && (
            <strong>
            Could not send a magic link. Maybe you had a typo in your E-Mail?
            </strong>
        )}
        {type === "password-recovery" && (
            <strong>
            Something went wrong while trying to recover your password. Please contact the support?
            </strong>
        )}
        {type === "invalid_magiclink" && (
            <strong>
            Incorrect magic link. Maybe you already used it or it expired?
            </strong>
        )}
        {type === "login-failed" && (
        <strong>Login was not successfull, sorry.</strong>
        )}
        {!knownErrors.includes(type) && (
        <strong>
            Something went wrong. Please try again or contact support.
        </strong>
        )}
        <br /><br />
        <Link role="button" href="/">
        Go back.
        </Link>
    </div>
    );
}