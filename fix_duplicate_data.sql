-- Fix duplicate data issue
-- Run this in Supabase SQL Editor to clean up duplicate entries

-- First, let's see what data we have
SELECT * FROM bookmarks ORDER BY created_at;

-- Delete all existing data to start fresh
DELETE FROM bookmarks;

-- Insert fresh data
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
SELECT * FROM bookmarks;
