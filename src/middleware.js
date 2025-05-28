// This middleware is used to check the session on every request
import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";
import { use } from "react";
export async function middleware(request) {


    const { supabase, response } = getSupabaseReqResClient({ request });

    // const session = await supabase.auth.getSession();

    const requestedPath = request.nextUrl.pathname;
    const user = supabase.auth.getUser();
    if (requestedPath.startsWith("/tickets")) {
      if (!user) {
        return NextResponse.redirect(new URL("/", req.url));
      }
    } else if(requestedPath === "/"){
      if (user) {
        return NextResponse.redirect(new URL("/tickets", request.url));
      }
    }
    return response.value;
}
export const config = {
  matcher: [
    /**
     * This matcher includes all paths except:
     * - _next (framework static files)
     * - images
     * - favicon.ico
     * - api
     * - .well-known (hidden files often used for verification or settings)
     */
    '/((?!_next|images|favicon.ico|api|\\.well-known).*)',
  ],
}