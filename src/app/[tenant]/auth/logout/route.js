import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";
export async function GET(request, {params: {tenant}}) {
    console.log("Logout request received for tenant:", tenant);
    const supabase = await getSupabaseCookiesUtilClient();
    await supabase.auth.signOut();
    return NextResponse.redirect(buildUrl("/", tenant, request));
}