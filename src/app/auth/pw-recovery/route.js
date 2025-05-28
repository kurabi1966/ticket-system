import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import nodemailer from "nodemailer";

import { NextResponse } from "next/server";
export async function POST(request) {
    console.log("Backend: User wants to reset his password");
     // Step 1:
    const formData = await request.formData();
    const email = formData.get("email");
    // Step 2:
    const supabaseAdmin = await getSupabaseAdminClient();

    const { data: linkData, error } =
        await supabaseAdmin.auth.admin.generateLink({
            email,
            type: "recovery"
        });

    if (error) {
        return NextResponse.redirect(new URL("/error?type=password-recovery", request.url), { status: 302 });
    } 
    const { hashed_token } = linkData.properties;

    const constructedLink = new URL(
        `/auth/verify?hashed_token=${hashed_token}&type=recovery`,
        request.url
    );

    const transporter = nodemailer.createTransport({
        host: "localhost",
        port: 54325,
    });
    
    await transporter.sendMail({
        from: "Your Company <ammar@zidny.net>",
        to: email,
        subject: "Magic Link for Password Recovery",
        html: `
        <h1>Hi there!</h1>
        <p>To reset your password, please click <a href="${constructedLink.toString()}">here</a></p>
        <p>If you did not request this email, please ignore it.</p>
        <p>Best regards,</p>
        <p>Ticket System Team</p>
        `,
    });
    const thanksUrl = new URL("/thanks?type=password-recovery", request.url);
    return NextResponse.redirect(thanksUrl, 302);
}