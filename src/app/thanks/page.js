import Link from "next/link";

export default function ThanksPage({ searchParams }) {
    const { type } = searchParams;
    const generalThanks = ["general"];
    return (
    <div style={{ textAlign: "center" }}>
        {
            type === "magic-link" && (
                <>
                    <h1>Magic on its way!</h1>
                    <span>Thanks! You should get a link to login in a few seconds.</span>
                </>
            )
        }
        {
            type === "password-recovery" && (
                <>
                    <h1>Password Recovery!</h1>
                    <span>Thanks! You should get a link to reset your password in a few seconds.</span>
                </>
            )
        }
        {!generalThanks.includes(type) && (
            <strong>
                Thanks... If you need any help or support, please contact the platform admin.
            </strong>
        )}
        <br /><br />
        <Link role="button" href="/">
        Go back.
        </Link>
    </div>
    );
}