import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { urlPath } from "@/utils/url-helpers";
import { NextResponse } from "next/server";
export async function POST(request, { params }) {

    const { tenant } = await params;
    console.log("Backend: User wants to login with password");
     // Step 1:
    const formData = await request.formData();
    const email = formData.get("email");
    const password = formData.get("password");
    // Step 2:
    const supabase = await getSupabaseCookiesUtilClient();
    // Step 3:
    const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
    });
    // Step 4:
    const userData = data?.user;
    if (error || !userData) {
        return NextResponse.redirect(urlPath("/error?type=login-failed", tenant), { status: 302 });
    }
    return NextResponse.redirect(urlPath("/tickets", tenant), {status: 302});
}