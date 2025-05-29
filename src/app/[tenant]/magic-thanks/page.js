    import { urlPath } from "@/utils/url-helpers";
    import Link from "next/link";

    export default async function MagicLinkSuccessPage(props) {
        const params = await props.params;
        const searchParams = await props.searchParams;

    const { type } = searchParams;
    const isRecovery = type === "recovery";

    return (
    <div style={{ textAlign: "center" }}>
        <h1>
            {isRecovery && "Password "}
            Magic on its way!
        </h1>

        {type === "recovery" ? (
            <p>Check your email for a link to reset your password.</p>
        ) : (
        <p>Check your email for a link to log in.</p>
        )}

        <br />
        <br />
        <Link role="button" href={urlPath("/", params.tenant)}>
        Go back.
        </Link>
    </div>
    );
    }