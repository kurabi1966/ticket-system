"user client";
import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";
export default function ErrorPage({ searchParams, params }) {
    const {tenant} = use(params);
    const realQueryParams = use(searchParams);
    const type = realQueryParams.type || "knownErrors";
    let errorMessage = "";

    switch (type) {
        case "magiclink":
            errorMessage = "Could not send a magic link. Maybe you had a typo in your E-Mail?";
            break;
        case "password-recovery":
            errorMessage = "Something went wrong while trying to recover your password. Please contact the support?";
            break;
        case "login-failed":
            errorMessage = "Login was not successful, sorry.";
            break;
        case "invalid_magiclink":
            errorMessage = "Incorrect magic link. Maybe you already used it or it expired?";
            break;
        default:
            errorMessage = "Something went wrong. Please try again or contact support".
            break;
    }

    return (
    <div style={{ textAlign: "center" }}>
        <h1>Ooops!</h1>
        <strong>{errorMessage}</strong>
        <br /><br />
        <Link role="button" href={urlPath('/', tenant)}>
        Go back.
        </Link>
    </div>
    );
}