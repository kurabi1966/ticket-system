"use client";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useRef } from "react";

export default function ChangePasswordPage() {
  const passwordRef = useRef(null);
  const supabase = getSupabaseBrowserClient();

  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();
        const value = (passwordRef.current.value || "").trim();

        supabase.auth.updateUser({ password: value }).then((result) => {
          if (result.error) {
            alert(result.error.message);
          } else {
            alert("Password updated!");
            passwordRef.current.value = "";
            window.location.href = "/tickets";
            // Optionally redirect or perform other actions
            // window.location.href = "/tickets"; // Uncomment to redirect
          }
        });
      }}
    >
      <fieldset>
        <label htmlFor="password">
          New Password{" "}
          <input
            ref={passwordRef}
            name="password"
            type="password"
            id="password"
            required
          />
        </label>
      </fieldset>

      <button type="submit">Reset Password</button>
    </form>
  );
}