
// import Image from "next/image";
// import { useEffect } from 'react';
// import { getSupabaseBrowserClient } from '@/supabase-utils/browserClient';
import {Login} from '@/components/Login';
export default function LoginPage({searchParams}) {

  // useEffect(() => {
  //   // Initialize Supabase client
  //   const supabase = getSupabaseBrowserClient();
  //   supabase.storage.listBuckets().then((result) => {console.log("Bucket List", result);});
  // }
  // , []);
  const wantsMagicLink = searchParams.magicLink === "yes";
  return <Login isPasswordLogin={!wantsMagicLink}/>;
}
