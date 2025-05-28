// This middleware is used to check the session on every request
import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";
export async function middleware(request) {
  console.log("Middleware running for request:", request.nextUrl.pathname);

    const { supabase, response } = getSupabaseReqResClient({ request });

  

    const requestedPath = request.nextUrl.pathname;
    const {data} = await supabase.auth.getUser();

    const user = data.user;
    console.log("Authenticated User?", user ? user.email : "No user");
    if (requestedPath.startsWith("/tickets")) {
      if (!user) {
        return NextResponse.redirect(new URL("/", request.url));
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