SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'a3ee8370-9f73-48c9-a88a-bc493969cb41', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"ahmad@ammar.net","user_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","user_phone":""}}', '2025-05-28 08:12:34.21266+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce129871-443c-49c9-a742-7d777ebb802f', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 09:12:58.166511+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ebc8962-db96-4eb9-b244-f2b8ca4cc329', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 09:17:17.595625+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebdbf2bc-331a-40b6-9f52-776f73239a7a', '{"action":"token_refreshed","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 10:16:03.289269+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f45b35b2-5a4c-42c6-955c-9e34ce8c3bd0', '{"action":"token_revoked","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 10:16:03.29008+00', ''),
	('00000000-0000-0000-0000-000000000000', 'deb8f681-193c-4dc8-ade6-60b58123b62f', '{"action":"token_refreshed","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 10:16:04.963592+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e60f5a0-eca2-499b-a98b-028ea3760114', '{"action":"token_refreshed","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 10:16:06.223913+00', ''),
	('00000000-0000-0000-0000-000000000000', '018b1292-e901-452a-9a27-fa7b066d6845', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 10:29:39.216439+00', ''),
	('00000000-0000-0000-0000-000000000000', '11e1b72c-1aaa-473b-bb32-5a3365c99d43', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 11:05:55.519467+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3cb2b98-a44a-4125-8e5a-dc4ba1fff099', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 11:07:21.340682+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebd48959-b631-4728-990c-a1be094406c7', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 11:08:46.926377+00', ''),
	('00000000-0000-0000-0000-000000000000', '822b54d2-3c88-4a5e-8e6a-7619cff4f5ab', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 11:17:53.922905+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a69a9d0-bc43-4e9c-af85-47c0c74643fd', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 11:18:33.704368+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f31f3d6b-2f56-4464-9bc8-9ee146a098f0', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 11:19:08.272759+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f935d3cf-d3a9-45d6-8a97-639f60be7389', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 11:19:13.792029+00', ''),
	('00000000-0000-0000-0000-000000000000', '136c9df7-811d-41eb-a2a2-f6aac7755498', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 11:28:19.575269+00', ''),
	('00000000-0000-0000-0000-000000000000', '43252f8a-c3f2-4eab-a42e-d6522209ed7a', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 11:28:29.134549+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a9d4dbe-19bc-43e4-8a26-7debf725ff8f', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 11:42:39.620676+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c083397-93c2-49b8-807d-e9af00cbe694', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 11:49:05.774193+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae1c4e8c-ba3c-4e8c-85d0-e0147e01cc98', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 11:49:11.309479+00', ''),
	('00000000-0000-0000-0000-000000000000', '79ff37de-42da-4f61-ab3e-ee94f6a7fc96', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 11:49:15.057787+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fc434af-d9ec-43e8-9183-6ed3f12c7f3b', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 11:51:02.711485+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ccc8083-f170-477d-96ff-adb446de1ff8', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 11:57:34.204907+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e17eb9aa-20af-4fc9-adac-ea05b905d5ee', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 12:01:28.642936+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d904e67-cc83-408c-a95f-f6f078a09e54', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 12:01:33.755448+00', ''),
	('00000000-0000-0000-0000-000000000000', '141646e6-2cdc-4005-ab76-6ede3240f39c', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 12:20:04.485488+00', ''),
	('00000000-0000-0000-0000-000000000000', '55a49505-c1c0-4d44-9a47-ba80928a81fd', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 12:21:51.486178+00', ''),
	('00000000-0000-0000-0000-000000000000', '4731d470-da19-4e74-a8b9-6a998a2e5068', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 12:56:57.072009+00', ''),
	('00000000-0000-0000-0000-000000000000', '7cf41412-7af9-4592-9dd6-996f07742f83', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 13:07:24.502335+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4a87ec0-d9bc-45c7-a3da-684b8b56acb0', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 13:08:38.935321+00', ''),
	('00000000-0000-0000-0000-000000000000', '366bb1f2-c225-4240-81f3-e89c99745026', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 13:09:39.757381+00', ''),
	('00000000-0000-0000-0000-000000000000', '82e380c9-fa6a-43e0-b5ef-489e260d22eb', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 13:09:47.1284+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bc089b3-1d84-4bae-afc6-680f04a770ee', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 13:11:17.294588+00', ''),
	('00000000-0000-0000-0000-000000000000', '37184830-4fbf-4390-bcd3-1482851e9e4a', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 13:11:27.266142+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e17abd12-7582-4fbd-8fa7-7deb1812935f', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 13:11:47.66406+00', ''),
	('00000000-0000-0000-0000-000000000000', '1af33700-7baf-4448-9775-5c7dbee7a4bd', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 13:16:00.334273+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3e34a10-8043-4e96-a2ad-396fbbba3d40', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 13:16:06.695321+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb2f3c21-f2a4-4362-b455-e055f6e777e0', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 13:16:11.044088+00', ''),
	('00000000-0000-0000-0000-000000000000', '5466afa5-10b5-45dc-b27e-6f6eee3faa36', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 13:17:06.728316+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a470694-8b58-4a56-b04a-dde50efc4a5a', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 13:18:51.381442+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb2271e1-7d0a-411c-b53a-6248c9c4e367', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 13:19:40.776023+00', ''),
	('00000000-0000-0000-0000-000000000000', '7366574c-d230-436a-b3e6-ad71e5cee7fa', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 13:42:17.095984+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cc3cf8dd-ae6e-4534-9257-f8e4b89ecf2e', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 13:48:02.197079+00', ''),
	('00000000-0000-0000-0000-000000000000', '53a402f7-0a3c-4e42-9ae0-e9b4684214ff', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 13:48:07.682942+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd56f127-3f7c-4c42-ac53-88887cbb0873', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 13:54:20.385391+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc8769b7-7626-4e50-859e-416ec88441de', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 15:11:05.655901+00', ''),
	('00000000-0000-0000-0000-000000000000', '79eb6d4d-ab29-4eeb-9bae-b1f46c526eee', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 15:16:59.595267+00', ''),
	('00000000-0000-0000-0000-000000000000', '85762638-383e-4479-b94e-326463cd9cab', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-05-28 15:17:00.509582+00', ''),
	('00000000-0000-0000-0000-000000000000', '459acd91-35d1-4b39-876d-48cc2ccdae57', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 15:20:37.312872+00', ''),
	('00000000-0000-0000-0000-000000000000', '6403b89d-d533-4387-b1b3-780d6d30732a', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 15:20:52.209211+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d83fa00-ff5f-40a5-a894-49d0af325755', '{"action":"token_refreshed","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 16:29:58.751714+00', ''),
	('00000000-0000-0000-0000-000000000000', '491be39b-41d2-4d90-95fd-3929e66f4790', '{"action":"token_revoked","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 16:29:58.75296+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c0e881dd-5b1b-46da-b5ca-27892872f7ed', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 16:31:55.763061+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd1e6255-b558-4ecb-a0c7-4b41817114ad', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 16:32:58.642436+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e010ec92-061f-4a41-b3b1-481955e05d38', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 16:49:53.297952+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6bbe67e-9416-45d4-be2e-b93649696cce', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 16:51:12.411448+00', ''),
	('00000000-0000-0000-0000-000000000000', '70366591-5f26-4f68-b305-3afa48d121bc', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 16:51:30.97345+00', ''),
	('00000000-0000-0000-0000-000000000000', '822eae9d-96db-4490-aa1c-7a5a4463dbbc', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 16:51:50.153611+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c3eb01b-179a-401e-aa12-b0b4717e86f7', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 16:52:13.037022+00', ''),
	('00000000-0000-0000-0000-000000000000', '3fc0040d-4510-4e8b-bdd7-760d76aa2b5a', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 16:52:33.443274+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbad9658-6160-4cdd-9719-18739db9bb7e', '{"action":"token_refreshed","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 19:20:32.888383+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3555769-fcd3-4924-9a50-540ebace801f', '{"action":"token_revoked","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 19:20:32.889207+00', ''),
	('00000000-0000-0000-0000-000000000000', '33faff08-f4a0-46fa-bd01-f5f38bfa5093', '{"action":"token_refreshed","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"token"}', '2025-05-28 19:20:32.934691+00', ''),
	('00000000-0000-0000-0000-000000000000', '4729fae5-5ffb-4c16-9b73-5e78067151b4', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 19:20:37.622303+00', ''),
	('00000000-0000-0000-0000-000000000000', '2925d086-d523-4ab4-96ec-3fd149a31264', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 20:18:40.835675+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fddf53f2-3347-4f73-aeb0-57040711b17a', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:21:10.303029+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a6f48b7-5f20-48c7-af2b-536559f1a4f7', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:21:31.615707+00', ''),
	('00000000-0000-0000-0000-000000000000', '039e00ae-b815-43b6-9bb4-7c77f5a71897', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 20:21:34.310797+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b7afd85b-feb6-44e4-af73-d5ed91fab24a', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:21:36.647984+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbf97433-1c4d-4094-94e9-e34d8e087a72', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 20:21:42.08872+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fbf033cd-df9a-4399-ac18-60a0c7d7599d', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:21:49.515252+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0340f40-2a2a-4000-9e7f-862d907641df', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:21:54.084285+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba30e8cf-88fb-435f-94f9-43c9162532db', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 20:48:24.864331+00', ''),
	('00000000-0000-0000-0000-000000000000', '00db64da-7774-4b36-8505-4194bae2f2c3', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:55:56.11182+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dde181d8-7ff9-47d5-99c0-796d3fa98f7f', '{"action":"user_updated_password","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 20:56:14.644847+00', ''),
	('00000000-0000-0000-0000-000000000000', 'caa796bb-678d-4418-bc67-c7dd618a81f2', '{"action":"user_modified","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 20:56:14.645605+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a78d64e6-ae63-4cf4-a159-2e7739a022de', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:56:37.083583+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd17046e1-1a14-4bc9-a5b5-810156fff290', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 20:56:42.973331+00', ''),
	('00000000-0000-0000-0000-000000000000', '9dd01b08-0e31-4533-b4b3-585ce921617c', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:56:44.985287+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e0d2d5b-a341-4989-8c19-217f67088275', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 20:56:52.390902+00', ''),
	('00000000-0000-0000-0000-000000000000', '68f82e43-9210-4451-b712-e3bc6c91b973', '{"action":"logout","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:56:54.334469+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b32863f2-754e-43f8-9313-9fa350d1dcdc', '{"action":"user_recovery_requested","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 20:57:25.920637+00', ''),
	('00000000-0000-0000-0000-000000000000', '59b1693d-d15d-4250-9b31-1f4c3179914d', '{"action":"login","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"account"}', '2025-05-28 20:58:31.019716+00', ''),
	('00000000-0000-0000-0000-000000000000', '15542751-a722-41a3-bbc1-23e848a8ee72', '{"action":"user_updated_password","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 20:58:39.432243+00', ''),
	('00000000-0000-0000-0000-000000000000', '7de6287f-68f5-4e17-9740-ff47f2caefeb', '{"action":"user_modified","actor_id":"2f03e857-7a07-4a1a-b39a-0211ee577014","actor_username":"ahmad@ammar.net","actor_via_sso":false,"log_type":"user"}', '2025-05-28 20:58:39.432934+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3d8bff2-6dfb-4ca2-a515-77f90320c5ee', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"david@local.com","user_id":"3c773c0d-a628-4692-b314-da319441e982","user_phone":""}}', '2025-05-29 08:27:14.667044+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('5b2564c8-b231-43cd-b581-cecb55c9aa2c', '2f03e857-7a07-4a1a-b39a-0211ee577014', 'aa9afbc5-1ec4-4ff4-9923-fee4dd836220', 's256', 'qPx-VdYGM49-HKep_NTv5qyBzraDDuUcFnmaKdQc4i8', 'magiclink', '', '', '2025-05-28 13:54:20.347005+00', '2025-05-28 13:54:20.347005+00', 'magiclink', NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '2f03e857-7a07-4a1a-b39a-0211ee577014', 'authenticated', 'authenticated', 'ahmad@ammar.net', '$2a$10$xaqYNwJOL/zUYcX20dl1CuHK.DGbejW05lBC25JdQpUut0PouRiq6', '2025-05-28 08:12:34.214797+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-05-28 20:58:31.021649+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-05-28 08:12:34.204471+00', '2025-05-28 20:58:39.431233+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '3c773c0d-a628-4692-b314-da319441e982', 'authenticated', 'authenticated', 'david@local.com', '$2a$10$v1RfeLumlbpRv6KGUq8gN.FaF6X9MFvYeXiY2Gqth06n1XOvRKU22', '2025-05-29 08:27:14.669072+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-05-29 08:27:14.664174+00', '2025-05-29 08:27:14.669988+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('2f03e857-7a07-4a1a-b39a-0211ee577014', '2f03e857-7a07-4a1a-b39a-0211ee577014', '{"sub": "2f03e857-7a07-4a1a-b39a-0211ee577014", "email": "ahmad@ammar.net", "email_verified": false, "phone_verified": false}', 'email', '2025-05-28 08:12:34.211015+00', '2025-05-28 08:12:34.21106+00', '2025-05-28 08:12:34.21106+00', 'a1f8b4e8-b6fb-4209-a5da-eca73d4c63b7'),
	('3c773c0d-a628-4692-b314-da319441e982', '3c773c0d-a628-4692-b314-da319441e982', '{"sub": "3c773c0d-a628-4692-b314-da319441e982", "email": "david@local.com", "email_verified": false, "phone_verified": false}', 'email', '2025-05-29 08:27:14.665528+00', '2025-05-29 08:27:14.665562+00', '2025-05-29 08:27:14.665562+00', '159f82a0-4439-4699-b964-e5c96440cdd1');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('c998b09c-627e-4907-8691-b53bf86bcf03', '2f03e857-7a07-4a1a-b39a-0211ee577014', '2025-05-28 20:58:31.021692+00', '2025-05-28 20:58:31.021692+00', NULL, 'aal1', NULL, NULL, 'node', '192.168.65.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('c998b09c-627e-4907-8691-b53bf86bcf03', '2025-05-28 20:58:31.023776+00', '2025-05-28 20:58:31.023776+00', 'otp', '51ce6bd5-9d63-4590-8d1e-07e416e3145f');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 35, 'w256bhpdiwxf', '2f03e857-7a07-4a1a-b39a-0211ee577014', false, '2025-05-28 20:58:31.022589+00', '2025-05-28 20:58:31.022589+00', NULL, 'c998b09c-627e-4907-8691-b53bf86bcf03');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2025-05-29 08:25:05.092732+00', 'Ahmad Kurabi', '2f03e857-7a07-4a1a-b39a-0211ee577014'),
	(2, '2025-05-29 08:28:30.693093+00', 'David Lorenz', '3c773c0d-a628-4692-b314-da319441e982');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2025-05-29 07:56:29.08928+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2025-05-29 07:59:32.076416+00', 'Activenode Education', 'activenode.local'),
	('oddmonkey', '2025-05-29 08:00:18.168558+00', 'OddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2025-05-29 08:43:57.978086+00', 1, 'oddmonkey'),
	(2, '2025-05-29 08:44:18.450034+00', 2, 'packt'),
	(3, '2025-05-29 08:44:50.948438+00', 2, 'oddmonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 35, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 2, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 4, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
