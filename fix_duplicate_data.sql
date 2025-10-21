-- Quick fix for duplicate data issue
-- Run this in Supabase SQL Editor

-- Delete all existing data
DELETE FROM bookmarks;

-- Verify table is empty
SELECT COUNT(*) as total_records FROM bookmarks;
