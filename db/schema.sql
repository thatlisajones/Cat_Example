DROP DATABASE IF EXISTS feelings_db;
CREATE DATABASE feelings_db;

USE feelings_db;

CREATE TABLE feelings(
  feeling_id INT AUTO_INCREMENT NOT NULL,
  feeling_group VARCHAR(45) NOT NULL,
  feeling_name VARCHAR(45) NOT NULL,
  feeling_emoji VARCHAR(10) NOT NULL,
  feeling_color VARCHAR(45) NOT NULL,
  feeling_value INT(5) NOT NULL,
  selected BOOLEAN DEFAULT false,
  primary key(feeling_id)
);

INSERT INTO feelings (feeling_group, feeling_name, feeling_color, feeling_value)
VALUES   ("Joy", "Excited", "&#x1F601", "#ADFF2F", 101),
  ("Joy", "Sensuous", "&#x1F60F", "#006400", 102),
  ("Joy", "Energetic", "&#x1F92A", "#228B22", 103),
  ("Joy", "Cheerful", "&#x1F31E", "#00FF00", 104),
  ("Joy", "Creative", "&#x1F58C", "#32CD32", 105),
  ("Joy", "Hopeful", "&#x1F91E", "#7CFC00", 106),
  ("Joy", "Adventurous", "&#x1F343", "#6B8E23", 107),
  ("Joy", "Fascinated", "&#x1F9D0", "#5DBF40", 108),
  ("Joy", "Stimulated", "&#x1F61C", "#17FF0F", 109),
  ("Joy", "Helpful", "&#x1F91D", "#98FB98", 110),
  ("Joy", "Playful", "&#x1F33C", "#8AFFA5", 111),
  ("Joy", "Delighted", "&#x1F917", "#00A300", 112),
  ("Peace", "Calm", "&#x1F60C", "#4B0082", 201),
  ("Peace", "Fulfilled", "&#x1F64C", "#8B008B", 202),
  ("Peace", "Meditative", "&#x1F334", "#9932CC", 203),
  ("Peace", "Harmonious", "&#x262E", "#9400D3", 204),
  ("Peace", "Loving", "&#x1F49D", "#8A2BE2", 205),
  ("Peace", "Trusting", "&#x1F932", "#9370DB", 206),
  ("Peace", "Nurturing", "&#x1F431", "#BA55D3", 207),
  ("Peace", "Kind", "&#x1F46D", "#FF00FF", 208),
  ("Peace", "Validated", "&#x2705", "#DA70D6", 209),
  ("Peace", "Generous", "&#x1F49C", "#EE82EE", 210),
  ("Peace", "Secure", "&#x1F510", "#DDA0DD", 211),
  ("Peace", "Thankful", "&#x1F64F", "#E6E6FA", 212),
  ("Confidence", "Loyal", "&#x1F415", "#F0F8FF", 301),
  ("Confidence", "Needed", "&#x1F436", "#B0E0E6", 302),
  ("Confidence", "Appreciated", "&#x1F48E", "#87CEFA", 303),
  ("Confidence", "Respected", "&#x1F3C6", "#87CEEB", 304),
  ("Confidence", "Dignified", "&#x1F451", "#00BFFF", 305),
  ("Confidence", "Blessed", "&#x1F381", "#1E90FF", 306),
  ("Confidence", "Lucky", "&#x1F340", "#6495ED", 307),
  ("Confidence", "Discerning", "&#x1F9D0", "#4682B4", 308),
  ("Confidence", "Loved", "&#x1F60D", "#7B68EE", 309),
  ("Confidence", "Admirable", "&#x1F607", "#6A5ACD", 310),
  ("Confidence", "Successful", "&#x1F947", "#4169E1", 311),
  ("Confidence", "Deserving", "&#x1F4AF", "#0000CD", 312),
  ("Sadness", "Sorry", "&#x1F630", "#FF4500", 401),
  ("Sadness", "Stupid", "&#x1F92F", "#F7A036", 402),
  ("Sadness", "Inferior", "&#x1F949", "#F2AC92", 403),
  ("Sadness", "Isolated", "&#x1F614", "#DAB68B", 404),
  ("Sadness", "Uninterested", "&#x1F4A4", "#E6830A", 405),
  ("Sadness", "Disappointed", "&#x1F61E", "#FFD8A8", 406),
  ("Sadness", "Guilty", "&#x2623", "#FF8C00", 407),
  ("Sadness", "Ashamed", "&#x1F613", "#FF6347", 408),
  ("Sadness", "Depressed", "&#x1F62D", "#FFD4CC", 409),
  ("Sadness", "Lonely", "&#x1F940", "#F4AC9F", 410),
  ("Sadness", "Bored", "&#x1F417", "#FF7F50", 411),
  ("Sadness", "Tired", "&#x1F634", "#FFCEBD", 412),
  ("Anger", "Critical", "&#x1F50D", "#FF6347", 501),
  ("Anger", "Spiteful", "&#x1F612", "#FF4500", 502),
  ("Anger", "Outraged", "&#x1F92C", "#8B0000", 503),
  ("Anger", "Bitter", "&#x2639", "#B22222", 504),
  ("Anger", "Resentful", "&#x1F624", "#DC143C", 505),
  ("Anger", "Hurt", "&#x1F622", "#CD5C5C", 506),
  ("Anger", "Skeptical", "&#x1F928", "#F08080", 507),
  ("Anger", "Irritated", "&#x1F616", "#E9967A", 508),
  ("Anger", "Frustrated", "&#x1F623", "#990000", 509),
  ("Anger", "Dismissive", "&#x1F644", "#FFADAD", 510),
  ("Anger", "Distant", "&#x1F3D4","#FA8072", 511),
  ("Anger", "Jealous", "&#x1F620", "#8B0000", 512),
  ("Fear", "Confused", "&#x1F615", "#FFFFCC", 601),
  ("Fear", "Rejected", "&#x274C", "#FFFF99", 602),
  ("Fear", "Helpless", "&#x1F937", "#FFFF66", 603),
  ("Fear", "Belittled", "&#x1F632", "#FFFF33", 604),
  ("Fear", "Insecure", "&#x1F633", "#FFFF00", 605),
  ("Fear", "Anxious", "&#x1F630	", "#FFFFE0", 606),
  ("Fear", "Overwhelmed", "&#x1F30B", "#FFFACD", 607),
  ("Fear", "Embarrassed", "&#x1F92D", "#EEE8AA", 608),
  ("Fear", "Inadequate", "&#x2B55", "#FAFAD2", 609),
  ("Fear", "Insignificant", "&#x1F400", "#CCCC00", 610),
  ("Fear", "Discouraged", "&#x1F61F", "#F0F093", 611),
  ("Fear", "Frightened", "&#x1F631", "#FFFF85", 612);