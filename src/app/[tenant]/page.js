import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { Login } from "./Login";
import { FORM_TYPES } from "./formTypes";
import { notFound } from "next/navigation";

export default async function LoginPage(props) {

  const params = await props.params;
  const searchParams = await props.searchParams;

  const tenant = params?.tenant;
  if (!tenant) return notFound();

  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin
    .from("tenants")
    .select("*")
    .eq("id", tenant)
    .single();

  if (error) {
    return notFound();
  }

  const { name: tenantName } = data;

  const wantsMagicLink = searchParams.magicLink === "yes";
  const wantsPasswordRecovery = searchParams.passwordRecovery === "yes";

  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (wantsPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

  return <Login formType={formType} tenant={tenant} tenantName={tenantName} />;
}