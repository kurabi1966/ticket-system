import { createClient } from '@supabase/supabase-js';

export function getSupabaseAdminClient() {
  if (
    !process.env.NEXT_PUBLIC_SUPABASE_URL ||
    !process.env.SUPABASE_SERVICE_ROLE_KEY
  ) {
    throw new Error('Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY');
  }

    // console.warn(
    //   'Using Supabase Admin Client. Ensure this is only used in server-side code.'
    // );

  // This is the one with full privileges—use only on server!
  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.SUPABASE_SERVICE_ROLE_KEY,
    {
      // optional: set any additional options you need here
    }
  );
}
