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
    body MEDIUMTEXT NOT NULL,
    meta_summary MEDIUMTEXT NOT NULL,
    meta_keywords VARCHAR(255) NOT NULL
);

CREATE TABLE article_attribute (
    article_id UNIQUEIDENTIFIER,
    kind ENUM('tag', 'category'),
    val VARCHAR(30),
    FOREIGN KEY article_id REFERENCES article(id)
);