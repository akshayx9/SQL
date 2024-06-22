-- Delete all 4 year old cats
 
 DELETE FROM cats WHERE age = 4;
 
-- Delete cats whose age is the same as their cat_id

DELETE FROM cats WHERE age = cat_id;

-- Delete all the cats

DELETE FROM cats;