'use client';

import { ChangePassword } from '@/app/components/change-password';
import { use } from 'react';

export default function ForgetPasswordPage({params}) {
  const {tenant} = use(params);
  return <ChangePassword tenant={tenant}/>;
}
