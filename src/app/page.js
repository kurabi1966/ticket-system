'use client';

import { useSearchParams } from 'next/navigation';
import { Login } from '@/components/Login';

export default function LoginPage() {
  const searchParams = useSearchParams();
  const wantsMagicLink = searchParams.get('magicLink') === 'yes';

  return <Login isPasswordLogin={!wantsMagicLink} />;
}
// This page handles the login functionality, allowing users to log in with either a password or a magic link.
// It uses the `useSearchParams` hook to determine if the user wants to log in with a magic link based on the URL parameters.
// The `Login` component is imported from the components directory and is rendered with the appropriate prop based on the user's choice.
// The `isPasswordLogin` prop is set to `false` if the user wants a magic link, and `true` otherwise.
// This setup allows for a flexible login experience, accommodating both traditional password-based logins and modern magic link logins.
// The `useSearchParams` hook is part of Next.js's navigation utilities, allowing us to access the query parameters in the URL.
// The `Login` component is expected to handle the actual login logic, including form submission and validation.
// The `wantsMagicLink` variable is derived from the URL's query parameters, specifically checking if `magicLink` is set to 'yes'.
// This approach keeps the login page clean and focused on rendering the appropriate login method based on user preference.