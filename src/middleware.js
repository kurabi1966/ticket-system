// This middleware is used to check the session on every request
import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";
export async function middleware(request) {
    console.log("--- Middleware running for request:", request.nextUrl.pathname);

    const { supabase, response } = getSupabaseReqResClient({ request });

    const {data} = await supabase.auth.getUser();
    const user = data.user;

    const requestedPath = request.nextUrl.pathname;

    const [tenant, ...restOfPath] = requestedPath.substr(1).split("/");
    console.log("---+++Tenant:", tenant);
    if ( !/[a-z0-9-_]+/.test(tenant) ) {
      return NextResponse.rewrite(new URL("/not-found", req.url));
    }

    const applicationPath = "/" + restOfPath.join("/");
    console.log("---+++Application Path:", applicationPath);
    if (applicationPath.startsWith("/tickets")) {
      if (!user) {
        return NextResponse.redirect(new URL(`/${tenant}/`, request.url));
      }
    } else if(applicationPath === "/"){
      if (user) {
        return NextResponse.redirect(new URL(`/${tenant}/tickets`, request.url));
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