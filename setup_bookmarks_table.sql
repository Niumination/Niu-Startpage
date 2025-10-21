-- Setup bookmarks table for startpage
-- Run this in Supabase SQL Editor

-- First, check if table exists and its structure
SELECT column_name, data_type, is_nullable 
FROM information_schema.columns 
WHERE table_name = 'bookmarks' AND table_schema = 'public';

-- Clear any existing data
DELETE FROM bookmarks;

-- Insert initial data
INSERT INTO bookmarks (user_id, bookmarks_data) 
VALUES ('default_user', '[
  {"title": "Hacker News", "url": "https://news.ycombinator.com", "chord": "HN"},
  {"title": "GitHub", "url": "https://github.com", "chord": "GH"},
  {"title": "Reddit", "url": "https://reddit.com", "chord": "RD"},
  {"title": "YouTube", "url": "https://youtube.com", "chord": "YT"},
  {"title": "Twitter", "url": "https://twitter.com", "chord": "TW"},
  {"title": "Wikipedia", "url": "https://wikipedia.org", "chord": "WK"}
]'::jsonb);

-- Verify the data
SELECT id, user_id, jsonb_array_length(bookmarks_data) as bookmark_count, created_at 
FROM bookmarks;
