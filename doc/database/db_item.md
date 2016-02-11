Table item
==========

| Field         | Description                                                                                                                                                | Type                | Null | Key | Default             | Extra          |
|---------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------|-----|---------------------|----------------|
| id            | sequential ID                                                                                                                                              | int(10) unsigned    | NO   | PRI | NULL                | auto_increment |
| guid          | A unique identifier for this item                                                                                                                          | varchar(255)        | NO   | MUL |                     |                |
| uri           |                                                                                                                                                            | varchar(255)        | NO   | MUL |                     |                |
| uid           | user.id which owns this copy of the item                                                                                                                   | int(10) unsigned    | NO   | MUL | 0                   |                |
| contact-id    | contact.id                                                                                                                                                 | int(11)             | NO   | MUL | 0                   |                |
| gcontact-id   | ID of the global contact                                                                                                                                   | int(11)             | NO   | MUL | 0                   |                |
| type          |                                                                                                                                                            | varchar(255)        | NO   |     |                     |                |
| wall          | This item was posted to the wall of uid                                                                                                                    | tinyint(1)          | NO   | MUL | 0                   |                |
| gravity       |                                                                                                                                                            | tinyint(1)          | NO   |     | 0                   |                |
| parent        | item.id of the parent to this item if it is a reply of some form; otherwise this must be set to the id of this item                                        | int(10) unsigned    | NO   | MUL | 0                   |                |
| parent-uri    | uri of the parent to this item                                                                                                                             | varchar(255)        | NO   | MUL |                     |                |
| extid         |                                                                                                                                                            | varchar(255         | NO   | MUL |                     |                |
| thr-parent    | If the parent of this item is not the top-level item in the conversation, the uri of the immediate parent; otherwise set to parent-uri                     | varchar(255)        | NO   |     |                     |                |
| created       | Creation timestamp.                                                                                                                                        | datetime            | NO   |     | 0000-00-00 00:00:00 |                |
| edited        | Date of  last edit (default is created)                                                                                                                    | datetime            | NO   |     | 0000-00-00 00:00:00 |                |
| commented     | Date of last comment/reply to this item                                                                                                                    | datetime            | NO   |     | 0000-00-00 00:00:00 |                |
| received      | datetime                                                                                                                                                   | datetime            | NO   |     | 0000-00-00 00:00:00 |                |
| changed       | Date that something in the conversation changed, indicating clients should fetch the conversation again                                                    | datetime            | NO   |     | 0000-00-00 00:00:00 |                |
| owner-name    | Name of the owner of this item                                                                                                                             | varchar(255)        | NO   |     |                     |                |
| owner-link    | Link to the profile page of the owner of this item                                                                                                         | varchar(255)        | NO   |     |                     |                |
| owner-avatar  | Link to the avatar picture of the owner of this item                                                                                                       | varchar(255)        | NO   |     |                     |                |
| author-name   | Name of the author of this item                                                                                                                            | varchar(255)        | NO   |     |                     |                |
| author-link   | Link to the profile page of the author of this item                                                                                                        | varchar(255)        | NO   |     |                     |                |
| author-avatar | Link to the avatar picture of the author of this item                                                                                                      | varchar(255)        | NO   |     |                     |                |
| title         | item title                                                                                                                                                 | varchar(255)        | NO   |     |                     |                |
| body          | item body content                                                                                                                                          | mediumtext          | NO   |     | NULL                |                |
| app           | application which generated this item                                                                                                                      | varchar(255)        | NO   |     |                     |                |
| verb          | ActivityStreams verb                                                                                                                                       | varchar(255)        | NO   |     |                     |                |
| object-type   | ActivityStreams object type                                                                                                                                | varchar(255)        | NO   |     |                     |                |
| object        | JSON encoded object structure unless it is an implied object (normal post)                                                                                 | text                | NO   |     | NULL                |                |
| target-type   | ActivityStreams target type if applicable (URI)                                                                                                            | varchar(255)        | NO   |     |                     |                |
| target        | JSON encoded target structure if used                                                                                                                      | text                | NO   |     | NULL                |                |
| postopts      | External post connectors add their network name to this comma-separated string to identify that they should be delivered to these networks during delivery | text                | NO   |     | NULL                |                |
| plink         | permalink or URL toa displayable copy  of the message at its source                                                                                        | varchar(255)        | NO   |     |                     |                |
| resource-id   | Used to link other tables to items, it identifies the linked resource (e.g. photo) and if set must also set resource_type                                  | varchar(255)        | NO   | MUL |                     |                |
| event-id      | Used to link to the event.id                                                                                                                               | int(11)             | NO   |     | 0                   |                |
| tag           |                                                                                                                                                            | mediumtext          | NO   |     | NULL                |                |
| attach        | JSON structure representing attachments to this item                                                                                                       | mediumtext          | NO   |     | NULL                |                |
| inform        |                                                                                                                                                            | mediumtext          | NO   |     | NULL                |                |
| file          |                                                                                                                                                            | mediumtext          | NO   |     | NULL                |                |
| location      | text location where this item originated                                                                                                                   | varchar(255)        | NO   |     |                     |                |
| coord         | longitude/latitude pair representing location where this item originated                                                                                   | varchar(255)        | NO   |     |                     |                |
| allow_cid     | Access Control - list of allowed contact.id '<19><78>'                                                                                                     | mediumtext          | NO   |     | NULL                |                |
| allow_gid     | Access Control - list of allowed groups                                                                                                                    | mediumtext          | NO   |     | NULL                |                |
| deny_cid      | Access Control - list of denied contact.id                                                                                                                 | mediumtext          | NO   |     | NULL                |                |
| deny_gid      | Access Control - list of denied groups                                                                                                                     | mediumtext          | NO   |     | NULL                |                |
| private       | distribution is restricted                                                                                                                                 | tinyint(1)          | NO   |     | 0                   |                |
| pubmail       |                                                                                                                                                            | tinyint(1)          | NO   |     | 0                   |                |
| moderated     |                                                                                                                                                            | tinyint(1)          | NO   |     | 0                   |                |
| visible       |                                                                                                                                                            | tinyint(1)          | NO   |     | 0                   |                |
| spam          |                                                                                                                                                            | tinyint(1)          | NO   |     | 0                   |                |
| starred       | item has been favourited                                                                                                                                   | tinyint(1)          | NO   |     | 0                   |                |
| bookmark      | item has been bookmarked                                                                                                                                   | tinyint(1)          | NO   |     | 0                   |                |
| unseen        | item has not been seen                                                                                                                                     | tinyint(1)          | NO   |     | 1                   |                |
| deleted       | item has been deleted                                                                                                                                      | tinyint(1)          | NO   | MUL | 0                   |                |
| origin        | item originated at this site                                                                                                                               | tinyint(1)          | NO   |     | 0                   |                |
| forum_mode    |                                                                                                                                                            | tinyint(1)          | NO   |     | 0                   |                |
| last-child    |                                                                                                                                                            | tinyint(1) unsigned | NO   |     | 1                   |                |
| mention       | The owner of this item was mentioned in it                                                                                                                 | tinyint(1)          | NO   |     | 0                   |                |
| network       | Network from where the item comes from                                                                                                                     | varchar(32)         | NO   |     |                     |                |
| rendered-hash |                                                                                                                                                            | varchar(32)         | NO   |     |                     |                |
| rendered-html | item.body converted to html                                                                                                                                | mediumtext          | NO   |     | NULL                |                |
| global        |                                                                                                                                                            | tinyint(1)          | NO   |     | 0                   |                |

Return to [database documentation](help/database)