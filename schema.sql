-- File:    schema.sql
-- Desc:    Defines the schema for the blog database.
-- Auth:    Efe Ozturkoglu

CREATE TABLE article (
    id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID(),
    title VARCHAR(255),
    publish_date DATETIME,
    created_date DATETIME,
    last_modify_date DATETIME
);

CREATE TABLE article_content (
    lang VARCHAR(2) NOT NULL,
    body MEDIUMTEXT NOT NULL
);