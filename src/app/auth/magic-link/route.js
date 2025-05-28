import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import nodemailer from "nodemailer";

import { NextResponse } from "next/server";
export async function POST(request) {
    console.log("Backend: User wants to login with magic link");
     // Step 1:
    const formData = await request.formData();
    const email = formData.get("email");
    // Step 2:
    const supabaseAdmin = await getSupabaseAdminClient();

    const { data: linkData, error } =
        await supabaseAdmin.auth.admin.generateLink({
            email,
            type: "magiclink"
        });

    if (error) {
        return NextResponse.redirect(new URL("/error?type=magic-link", request.url), { status: 302 });
    } 
    const { hashed_token } = linkData.properties;

    const constructedLink = new URL(
        `/auth/verify?hashed_token=${hashed_token}`,
        request.url
    );

    const transporter = nodemailer.createTransport({
        host: "localhost",
        port: 54325,
    });
    
    await transporter.sendMail({
        from: "Your Company <ammar@zidny.net>",
        to: email,
        subject: "Magic Link to login to Ticket System",
        html: `
        <h1>Hi there, this is a custom magic link email!</h1>
        <p>Click <a href="${constructedLink.toString()}">here</a> to log 
        in.</p>
        <p>If you did not request this email, please ignore it.</p>
        <p>Best regards,</p>
        <p>Ticket System Team</p>
        `,
    });
    const thanksUrl = new URL("/magic-thanks", request.url);
    return NextResponse.redirect(thanksUrl, 302);
}