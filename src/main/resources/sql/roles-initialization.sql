-- ============================================================
-- ROLE INITIALIZATION SCRIPT
-- ============================================================
-- This script initializes the roles table with default roles
-- Run this script after creating the database schema

-- Create roles table (if not exists)
-- Note: This should already exist based on your schema
-- CREATE TABLE IF NOT EXISTS public.roles
-- (
--     role_id bigserial NOT NULL,
--     role_name character varying(255) COLLATE pg_catalog."default" NOT NULL UNIQUE,
--     description character varying(500) COLLATE pg_catalog."default",
--     CONSTRAINT roles_pkey PRIMARY KEY (role_id)
-- )
-- TABLESPACE pg_default;

-- ============================================================
-- Insert Default Roles
-- ============================================================

-- Insert ADMIN role
INSERT INTO public.roles (role_name, description)
VALUES ('ADMIN', 'Administrator role with full system access')
ON CONFLICT DO NOTHING;

-- Insert MANAGER role
INSERT INTO public.roles (role_name, description)
VALUES ('MANAGER', 'Manager role with limited administrative access')
ON CONFLICT DO NOTHING;

-- Insert USER role (default role for new registrations)
INSERT INTO public.roles (role_name, description)
VALUES ('USER', 'Standard user role for regular users')
ON CONFLICT DO NOTHING;

-- ============================================================
-- OPTIONAL: Create Test Users with Different Roles
-- ============================================================

-- First, get the role IDs (required for the next step)
-- SELECT role_id FROM public.roles WHERE role_name = 'ADMIN';
-- SELECT role_id FROM public.roles WHERE role_name = 'MANAGER';
-- SELECT role_id FROM public.roles WHERE role_name = 'USER';

-- Example: Assign ADMIN role to first user (user_id = 10000)
-- Uncomment and adjust user_id as needed:
-- INSERT INTO public.user_roles (user_id, role_id)
-- SELECT 10000, role_id FROM public.roles WHERE role_name = 'ADMIN'
-- ON CONFLICT DO NOTHING;

-- Example: Assign MANAGER role to another user
-- INSERT INTO public.user_roles (user_id, role_id)
-- SELECT 10001, role_id FROM public.roles WHERE role_name = 'MANAGER'
-- ON CONFLICT DO NOTHING;

-- ============================================================
-- Verification Queries
-- ============================================================

-- View all roles
-- SELECT * FROM public.roles;

-- View all user roles
-- SELECT u.user_id, u.email, r.role_name 
-- FROM public.users u
-- LEFT JOIN public.user_roles ur ON u.user_id = ur.user_id
-- LEFT JOIN public.roles r ON ur.role_id = r.role_id
-- ORDER BY u.user_id;

-- View users by specific role
-- SELECT u.user_id, u.email, u.first_name, u.last_name
-- FROM public.users u
-- INNER JOIN public.user_roles ur ON u.user_id = ur.user_id
-- INNER JOIN public.roles r ON ur.role_id = r.role_id
-- WHERE r.role_name = 'ADMIN';

-- ============================================================
-- Cleanup (if needed)
-- ============================================================

-- Delete all user-role associations (WARNING: This removes all role assignments)
-- DELETE FROM public.user_roles;

-- Delete all roles (WARNING: This removes all roles)
-- DELETE FROM public.roles;

-- Drop sequences
-- DROP SEQUENCE IF EXISTS role_seq;
