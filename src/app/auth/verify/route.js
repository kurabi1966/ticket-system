import {getSupabaseCookiesUtilClient} from "@supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";

export async function GET(request) {


    const { searchParams } = new URL(request.url);
    const isPasswordRecovery = searchParams.get("type") === "recovery";
    const isMagicLink = searchParams.get("type") === "magic-link";
    const hashed_token = searchParams.get("hashed_token");
    const supabase = await getSupabaseCookiesUtilClient();

    if(isPasswordRecovery) {
        const { error } = await supabase.auth.verifyOtp({
            type: "recovery",
            token_hash: hashed_token,
        });
        if (error) {
            return NextResponse.redirect(new URL("/error?type=password_recovery", request.url));
        } else {
            return NextResponse.redirect(new URL("/tickets/change-password", request.url));
        }        
    } else if (isMagicLink) {
        const { error } = await supabase.auth.verifyOtp({
            type: "magiclink",
            token_hash: hashed_token,
        });
        if (error) {
            return NextResponse.redirect(new URL("/error?type=invalid_magiclink", request.url));
        } else {
            return NextResponse.redirect(new URL("/tickets", request.url));
        }
    }
        
        
            
    


}