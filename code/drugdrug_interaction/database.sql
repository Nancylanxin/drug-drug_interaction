--
-- SQLiteStudio v3.4.4 ���ɵ��ļ������� 11�� 1 11:32:25 2023
--
-- ���õ��ı����룺System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- ��auth_group
DROP TABLE IF EXISTS auth_group;

CREATE TABLE IF NOT EXISTS auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);


-- ��auth_group_permissions
DROP TABLE IF EXISTS auth_group_permissions;

CREATE TABLE IF NOT EXISTS auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- ��auth_permission
DROP TABLE IF EXISTS auth_permission;

CREATE TABLE IF NOT EXISTS auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                1,
                                1,
                                'add_logentry',
                                'Can add log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                2,
                                1,
                                'change_logentry',
                                'Can change log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                3,
                                1,
                                'delete_logentry',
                                'Can delete log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                4,
                                1,
                                'view_logentry',
                                'Can view log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                5,
                                2,
                                'add_permission',
                                'Can add permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                6,
                                2,
                                'change_permission',
                                'Can change permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                7,
                                2,
                                'delete_permission',
                                'Can delete permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                8,
                                2,
                                'view_permission',
                                'Can view permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                9,
                                3,
                                'add_group',
                                'Can add group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                10,
                                3,
                                'change_group',
                                'Can change group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                11,
                                3,
                                'delete_group',
                                'Can delete group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                12,
                                3,
                                'view_group',
                                'Can view group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                13,
                                4,
                                'add_user',
                                'Can add user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                14,
                                4,
                                'change_user',
                                'Can change user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                15,
                                4,
                                'delete_user',
                                'Can delete user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                16,
                                4,
                                'view_user',
                                'Can view user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                17,
                                5,
                                'add_contenttype',
                                'Can add content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                18,
                                5,
                                'change_contenttype',
                                'Can change content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                19,
                                5,
                                'delete_contenttype',
                                'Can delete content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                20,
                                5,
                                'view_contenttype',
                                'Can view content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                21,
                                6,
                                'add_session',
                                'Can add session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                22,
                                6,
                                'change_session',
                                'Can change session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                23,
                                6,
                                'delete_session',
                                'Can delete session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                24,
                                6,
                                'view_session',
                                'Can view session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                25,
                                7,
                                'add_interaction',
                                'Can add interaction'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                26,
                                7,
                                'change_interaction',
                                'Can change interaction'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                27,
                                7,
                                'delete_interaction',
                                'Can delete interaction'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                28,
                                7,
                                'view_interaction',
                                'Can view interaction'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                29,
                                8,
                                'add_detail',
                                'Can add detail'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                30,
                                8,
                                'change_detail',
                                'Can change detail'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                31,
                                8,
                                'delete_detail',
                                'Can delete detail'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                32,
                                8,
                                'view_detail',
                                'Can view detail'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                33,
                                9,
                                'add_introduction',
                                'Can add introduction'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                34,
                                9,
                                'change_introduction',
                                'Can change introduction'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                35,
                                9,
                                'delete_introduction',
                                'Can delete introduction'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                36,
                                9,
                                'view_introduction',
                                'Can view introduction'
                            );


-- ��auth_user
DROP TABLE IF EXISTS auth_user;

CREATE TABLE IF NOT EXISTS auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    last_name    VARCHAR (150) NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    first_name   VARCHAR (150) NOT NULL
);


-- ��auth_user_groups
DROP TABLE IF EXISTS auth_user_groups;

CREATE TABLE IF NOT EXISTS auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);


-- ��auth_user_user_permissions
DROP TABLE IF EXISTS auth_user_user_permissions;

CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- ��django_admin_log
DROP TABLE IF EXISTS django_admin_log;

CREATE TABLE IF NOT EXISTS django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    object_id       TEXT,
    object_repr     VARCHAR (200)       NOT NULL,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0),
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_time     DATETIME            NOT NULL
);


-- ��django_content_type
DROP TABLE IF EXISTS django_content_type;

CREATE TABLE IF NOT EXISTS django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    1,
                                    'admin',
                                    'logentry'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    2,
                                    'auth',
                                    'permission'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    3,
                                    'auth',
                                    'group'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    4,
                                    'auth',
                                    'user'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    5,
                                    'contenttypes',
                                    'contenttype'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    6,
                                    'sessions',
                                    'session'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    7,
                                    'drug',
                                    'interaction'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    8,
                                    'drug',
                                    'detail'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    9,
                                    'drug',
                                    'introduction'
                                );


-- ��django_migrations
DROP TABLE IF EXISTS django_migrations;

CREATE TABLE IF NOT EXISTS django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  1,
                                  'contenttypes',
                                  '0001_initial',
                                  '2023-10-31 13:26:35.525043'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  2,
                                  'auth',
                                  '0001_initial',
                                  '2023-10-31 13:26:35.554944'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  3,
                                  'admin',
                                  '0001_initial',
                                  '2023-10-31 13:26:35.567901'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  4,
                                  'admin',
                                  '0002_logentry_remove_auto_add',
                                  '2023-10-31 13:26:35.579860'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  5,
                                  'admin',
                                  '0003_logentry_add_action_flag_choices',
                                  '2023-10-31 13:26:35.589827'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  6,
                                  'contenttypes',
                                  '0002_remove_content_type_name',
                                  '2023-10-31 13:26:35.608765'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  7,
                                  'auth',
                                  '0002_alter_permission_name_max_length',
                                  '2023-10-31 13:26:35.620725'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  8,
                                  'auth',
                                  '0003_alter_user_email_max_length',
                                  '2023-10-31 13:26:35.634685'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  9,
                                  'auth',
                                  '0004_alter_user_username_opts',
                                  '2023-10-31 13:26:35.649627'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  10,
                                  'auth',
                                  '0005_alter_user_last_login_null',
                                  '2023-10-31 13:26:35.664672'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  11,
                                  'auth',
                                  '0006_require_contenttypes_0002',
                                  '2023-10-31 13:26:35.669650'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  12,
                                  'auth',
                                  '0007_alter_validators_add_error_messages',
                                  '2023-10-31 13:26:35.678619'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  13,
                                  'auth',
                                  '0008_alter_user_username_max_length',
                                  '2023-10-31 13:26:35.692182'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  14,
                                  'auth',
                                  '0009_alter_user_last_name_max_length',
                                  '2023-10-31 13:26:35.705664'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  15,
                                  'auth',
                                  '0010_alter_group_name_max_length',
                                  '2023-10-31 13:26:35.719625'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  16,
                                  'auth',
                                  '0011_update_proxy_permissions',
                                  '2023-10-31 13:26:35.729583'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  17,
                                  'auth',
                                  '0012_alter_user_first_name_max_length',
                                  '2023-10-31 13:26:35.746568'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  18,
                                  'drug',
                                  '0001_initial',
                                  '2023-10-31 13:26:35.754501'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  19,
                                  'sessions',
                                  '0001_initial',
                                  '2023-10-31 13:26:35.766458'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  20,
                                  'drug',
                                  '0002_detail_introduction',
                                  '2023-10-31 14:12:08.830635'
                              );


-- ��django_session
DROP TABLE IF EXISTS django_session;

CREATE TABLE IF NOT EXISTS django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);


-- ��drug_detail
DROP TABLE IF EXISTS drug_detail;

CREATE TABLE IF NOT EXISTS drug_detail (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    name2   VARCHAR (200) NOT NULL,
    details VARCHAR (200) NOT NULL
);

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            45,
                            '����ͪ',
                            '����ͪ��һ���˹��ϳɵ��м��أ������ڸ����ٴ��ϵ������ڡ����Ʋ��в����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            46,
                            '���ݻ�ͪ',
                            '���ݻ�ͪ��һ�־��п��Ƽ������õ�ҩ��������������ٰ����ӹ���Ĥ��λ֢�ȼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            47,
                            '������',
                            '��������һ���򾲴���ҩ������������ʧ�ߺͽ���֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            48,
                            '�������',
                            '���������һ�ֿ�����ҩ����������ƾ������֢��˫������ϰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            49,
                            '������',
                            '��������һ��ȫ������ҩ������������������յ���ά������״̬��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            50,
                            '������',
                            '��������һ�ֿ�����ʧ��ҩ������������ķ������������Ķ����١�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            51,
                            '�������ù��',
                            '�������ù����һ�ֹ��׿����أ����������ƺ�������Ⱦ��Ƥ����Ⱦ��ϸ����Ⱦ������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            52,
                            '����˫��',
                            '����˫����һ�ֿڷ�����ҩ�����������2�����򲡡�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            53,
                            '�˲�',
                            '�˲���һ���в�ҩ�������ڲ�����Ѫ�����������͵ֿ����ȷ��档'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            54,
                            '����Ī˾',
                            '����Ī˾��һ���������Ƽ���������Ԥ��������ֲ�ųⷴӦ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            55,
                            '��������',
                            '����������һ�ֿ��鰷ҩ������ڻ������֢״��ֹ�ȡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            56,
                            '��������',
                            '����������һ�ַǴ������ҩ������ڻ������֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            57,
                            '�����ɰ�',
                            '�����ɰ���һ�����Ƹ�Ѫѹ��ҩ������ڽ���Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            58,
                            '�������',
                            '���������һ�������Ľ�ʹ�͸�Ѫѹ��ҩ�����������Ѫ�ܺͽ������ฺ�ɡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            59,
                            '��Ī����',
                            '��Ī������һ�ֿ��Ƽ���ҩ����������ٰ��ĸ������ơ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            60,
                            '��������',
                            '����������һ�����ư��̲��Ŀ�����ҩ��������ӻ�������չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            61,
                            '�����濵',
                            '�����濵��һ�ֿ����ҩ������ڿ�����﷢����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            62,
                            '�����в���',
                            '�����в�����һ�ֿڷ�����ҩ�����������2�����򲡡�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            63,
                            '��������',
                            '����������һ�ֹ��׿����ҩ������������������Ⱦ�������Ⱦ������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            64,
                            '�����Ƿ�',
                            '�����Ƿ���һ���������Բ������ϰ���ҩ������ڸ��Ʋ����ܡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            65,
                            '������Τ',
                            '������Τ��һ�ֿ�����ҩ����������Ƶ����������Ⱦ�ʹ�״���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            66,
                            '����ù��',
                            '����ù����һ�ֹ��׿����أ����������ƺ�������Ⱦ��Ƥ����Ⱦ��ϸ����Ⱦ������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            67,
                            '���Ѵ�',
                            '���Ѵ���һ�ֽ�֬ҩ������ڵ���Ѫ֬ˮƽ��Ԥ����Ѫ�ܼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            68,
                            '������',
                            '��������һ�ֿڷ�����ҩ�������Ԥ��Ѫ˨�γɺ�����Ѫ˨�Լ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            69,
                            '��������',
                            '����������һ�ֿ���ҩ�����������θ����ʳ����������ϵͳ������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            70,
                            '��ά����',
                            '��ά������һ�����Ƹ�Ѫѹ���Ľ�ʹ��ҩ�����������Ѫ�ܺͽ������ฺ�ɡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            71,
                            '��������',
                            '����������һ�ְ��򿹰�ҩ����������Ʒ�Сϸ���ΰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            72,
                            'ȥ����ѹ��',
                            'ȥ����ѹ����һ�ֿ�����ҩ�����������ˮ�׺͸�Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            73,
                            '˫������',
                            '˫��������һ�ֿ����ҩ������ڿ�����﷢����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            74,
                            '˫�״�Ī',
                            '˫�״�Ī��һ�ֽ�����ʹҩ������ڻ��ⷢ�Ⱥ���ʹ֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            75,
                            '˫�ȷ���',
                            '˫�ȷ�����һ�ַǴ�����ʹҩ������ڻ��������ж���ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            76,
                            '˾������',
                            '˾��������һ�ֿ����ҩ������ڿ�����﷢����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            77,
                            '��������',
                            '����������һ�ְ��򿹰�ҩ������������������԰�Ѫ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            78,
                            '���Ǳ���',
                            '���Ǳ�����һ�ֿ����ҩ������ڿ�����﷢����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            79,
                            '߻�����',
                            '߻�������һ���򾲴���ҩ������������ʧ�ߺͽ���֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            80,
                            '߻���',
                            '߻�����һ�ֿ���Ⱦҩ�����������ϸ����Ⱦ�ͽ�˲���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            81,
                            '������',
                            '��������һ���������˷ܼ�����������ǿ�����Ժ��������ԡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            82,
                            '������͡��',
                            '������͡����һ������ҩ������ڼ���ˮ�׺͸�Ѫѹ֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            83,
                            '����ƥ��',
                            '����ƥ����һ�ֿ���Ѫѹҩ������ڽ���Ѫѹ���������ಡ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            84,
                            'ʥԼ������ȡ��',
                            'ʥԼ������ȡ����һ���в�ҩ�������ڻ�����������ͽ���֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            85,
                            '��������',
                            '����������һ�ֿ����ҩ������ڿ�����﷢����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            86,
                            '̹������',
                            '̹��������һ�����Ƹ�Ѫѹ���Ľ�ʹ��ҩ�����������Ѫ�ܺͽ������ฺ�ɡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            87,
                            '��������',
                            '����������һ�ֿ���Ⱦҩ�����������ϸ���ͼ������Ⱦ������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            88,
                            '����˾��',
                            '����˾����һ�ֿ��鰷ҩ������ڻ������֢״��ֹ�ȡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            89,
                            '������',
                            '��������һ�ֿ�����ҩ������ڻ��⽹�Ǻͽ���������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            90,
                            '��������',
                            '����������һ�����ư��̲��Ŀ�����ҩ��������ӻ�������չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            91,
                            '����˾��',
                            '����˾����һ�ֿ����ҩ����������ƽ�˲���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            92,
                            '��ɳ���',
                            '��ɳ�����һ�ֿ�����ҩ������ڻ������֢״��ֹ�ȡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            93,
                            '������ͪ',
                            '������ͪ��һ��θ����ҩ����������������������θʳ�ܷ�������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            94,
                            '������̹',
                            '������̹��һ�ֿ���ҩ�����������Сϸ���ΰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            95,
                            '����������',
                            '������������һ�ֿ�ʹ��ҩ������ڻ���ʹ������Ĺؽ���֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            96,
                            'ͷ�߱�ϩ',
                            'ͷ�߱�ϩ��һ�ֹ��׿����أ�����������ϸ����Ⱦ������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            97,
                            '����˾��',
                            '����˾����һ�����Ʊ��ص�ҩ������ڴٽ������䶯��ͨ�㡣'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            98,
                            '�¿���ƽ',
                            '�¿���ƽ��һ�ֿ�����ҩ����������ƾ������֢��˫������ϰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            99,
                            '�µ�ƽ',
                            '�µ�ƽ��һ�ֿ�����ҩ����������ƾ������֢��˫������ϰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            100,
                            '������������',
                            '��������������һ�ַǴ���������ʹҩ������ڻ��ⷢ�Ⱥ������ж���ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            101,
                            '�԰���ˮ������',
                            '�԰���ˮ��������һ�ַǴ���������ʹҩ������ڻ��ⷢ�Ⱥ������ж���ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            102,
                            '���ù��',
                            '���ù����һ�ֹ��׿����أ����������ƶ��ָ�Ⱦ֢״'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            103,
                            '������ƽ',
                            '������ƽ��һ�ָ�ͨ�����ͼ����������Ƹ�Ѫѹ���Ľ�ʹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            104,
                            '���޲���',
                            '���޲�����һ�ֿ���ҩ������������θ�����ʳ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            105,
                            '�������',
                            '���������һ�ַ�ѡ���Ԧ��������ͼ����������Ƹ�Ѫѹ�����ಡ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            106,
                            '����ͪ',
                            '����ͪ��һ�ֿ����ҩ������������������Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            107,
                            '��������',
                            '����������һ�ֿ����ҩ����ڿ�����﷢��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            108,
                            '���Ჴ��',
                            '���Ჴ����һ�ֿ�����ҩ�����������ĳЩ��Ѫ�����ܰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            109,
                            '������ͪ',
                            '������ͪ��һ����ʹҩ�����ڻ������ض���ʹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            110,
                            '������',
                            '��������һ�ֿ���Ⱦҩ����������������γ��Ⱦ������ϸ����Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            111,
                            '��������',
                            '����������һ���򾲴���ҩ�����������ƽ��Ǻ�˯���ϰ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            112,
                            '����ɳ��',
                            '����ɳ����һ�ֿ����أ��������Ƹ������͵�ϸ����Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            113,
                            '������',
                            '��������һ�ֿ����ҩ���������Ƹ������͵������Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            114,
                            '�������',
                            '���������һ�ַ������࿹��ҩ������������֢����ʹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            115,
                            '���������',
                            '�����������һ�ַ������࿹��ҩ���������ƹؽ��ס���ʹ���¾�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            116,
                            '�������',
                            '���������һ�ֿ�����ҩ���������ֱ���������ٰ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            117,
                            '��좱���',
                            '��좱�����һ�ֿ�����ҩ���������ĳЩ���͵Ķ�������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            118,
                            '��������',
                            '����������һ�ֳ����Ŀ���ҩ�����ڻ���θ���������Ĳ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            119,
                            '��������/������þ',
                            '��������/������þ��һ�ֿ���ҩ����������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            120,
                            '������þ/��������',
                            '������þ/����������һ�ֿ���ҩ�����ڻ���θ���������Ĳ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            121,
                            '�������',
                            '���������һ����������������Ƹ�Ѫѹ��ˮ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            122,
                            'ˮ�ɼ���',
                            'ˮ�ɼ�����һ�ֿ�����ҩ��������Ʒΰ����������͵İ�֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            123,
                            'ɳ������',
                            'ɳ��������һ��֧�������ż��������������������������Էβ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            124,
                            'ɳ������',
                            'ɳ��������һ�ֿ�����ҩ���������ĳЩ���͵İ�Ѫ�����ܰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            125,
                            'ɳ����͡',
                            'ɳ����͡��һ�ֽ���ҩ����������2������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            126,
                            'ɳ������',
                            'ɳ��������һ��֧�������ż��������������������Էβ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            127,
                            'ɳ��',
                            'ɳ����һ�ֿ�����ҩ��������Ʒΰ���ʳ�ܰ����ѳ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            128,
                            '��Ī�涡',
                            '��Ī�涡��һ��H2�������ͼ�����������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            129,
                            '�������',
                            '���������һ�ֿ�����ҩ��������ƾ������֢��˫������ϰ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            130,
                            '�ر�����',
                            '�ر�������һ�ֿ����ҩ����������Ƥ�������Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            131,
                            '������',
                            '��������һ���������Ƽ�������Ԥ��������ֲ����ųⷴӦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            132,
                            '��������',
                            '����������һ�ֿ�����ҩ��������ư�Ѫ�����ܰ����͹�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            133,
                            '���ŵ��',
                            '���ŵ����һ�ֿ�����ҩ��������ƶ෢�Թ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            134,
                            '�������',
                            '���������һ�ֽ���ҩ����������2������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            135,
                            '����͡',
                            '����͡��һ�ֿ�����ҩ��������Ʒΰ���θ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            136,
                            '���淥��͡',
                            '���淥��͡��һ�ֽ�֬ҩ���������Ƹ�Ѫ֢֬'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            137,
                            '���淥��͡��',
                            '���淥��͡����һ�ֽ�֬ҩ���������Ƹ�Ѫ֢֬'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            138,
                            '���̫��',
                            '���̫����һ�ֿ�����ҩ��������Ʒ�Сϸ���ΰ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            139,
                            '������',
                            '��������һ�ֿ���ҩ����������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            140,
                            '�������հ�',
                            '�������հ���һ�ֿ�����ҩ���������ƹ����Ա��׺�Ƥ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            141,
                            '�������ϰ�',
                            '�������ϰ���һ�ֵ�����������Ƽ�״�ٹ��ܿ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            142,
                            '�⻯��',
                            '�⻯����һ�ֵ�����������Ƽ�״�ٹ��ܿ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            143,
                            '�⻯��',
                            '�⻯����һ�ֵ�����������Ƽ�״�ٹ��ܿ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            144,
                            '��������',
                            '����������һ�ֵ�����������Ƽ�״�ٹ��ܿ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            145,
                            '��ȴ�',
                            '��ȴ���һ�ֵ��������ҽѧӰ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            146,
                            '�⺣��',
                            '�⺣����һ�ֵ��������ҽѧӰ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            147,
                            '����׶�',
                            '����׶���һ�ֵ����������ҽѧӰ����ͼ�״�ٹ��ܿ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            148,
                            '̼���',
                            '̼�����һ�ֲ���ҩ����������Ƹ�ȱ���͹�������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            149,
                            '̼���',
                            '̼�����һ��������������˫������ϰ����ľ��ȶ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            150,
                            '��Ī˾͡',
                            '��Ī˾͡��һ�ֿ�����ҩ���Ҫ�������ƶ���ʵ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            151,
                            '����������',
                            '������������һ��Ѫ�ܽ�����ת��ø���Ƽ����������Ƹ�Ѫѹ������˥��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            152,
                            '��ˮ�ɼ�',
                            '��ˮ�ɼ���һ�ֿ�����ҩ���Ҫ�������Ƽ����ܰ�ϸ���԰�Ѫ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            153,
                            '�׵�ƽ',
                            '�׵�ƽ��һ�ֿ�����ҩ���Ҫ�������ƾ������֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            154,
                            '�������',
                            '���������һ��������������ʧ���͸�Ѫѹ�Ħ����ͼ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            155,
                            '��������',
                            '����������һ�ֿ���ҩ������Ԥ��������Ѫ˨�γ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            156,
                            '��������',
                            '����������һ�������������������������Էβ���֧�������ż�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            157,
                            '�Ƕ�����',
                            '�Ƕ�������һ����������������ʹ�Ŀ�����ҩ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            158,
                            '�ǿ�ͪ',
                            '�ǿ�ͪ��һ�����������ض���ʹ��ǿЧ��ʹҩ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            159,
                            '����ϩ��',
                            '����ϩ����һ��������������˥�ߵ������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            160,
                            '����ͪ',
                            '����ͪ��һ��������������ʧ����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            161,
                            '������',
                            '��������һ���������ƾ������֢�Ŀ�����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            162,
                            '��������',
                            '����������һ����������������θ�����������Ŀ�����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            163,
                            '������',
                            '��������һ����������ʹ��͸�����Ѫ֢��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            164,
                            '������̹',
                            '������̹��һ��������������˥�ߵ�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            165,
                            'ҩ��̿',
                            'ҩ��̿��һ������������������Ⱦ���ж���ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            166,
                            '�����涡',
                            '�����涡��һ����������θ������θ�����H2�������ͼ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            167,
                            '�����',
                            '�������һ��������������ɭ����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            168,
                            'ͪ���ᰱ������',
                            'ͪ���ᰱ��������һ�������������Ŀ�����ҩ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            169,
                            'ͪ����',
                            'ͪ������һ�ֹ��׿����ҩ����Ҫ��������Ƥ������ǻ��ʳ�ܵ������Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            170,
                            'ͪ���',
                            'ͪ�����һ����������Ƥ�������Ⱦ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            171,
                            '�������',
                            '���������һ����������ȱ����ƶѪ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            172,
                            '�����涡',
                            '�����涡��һ����������θ������θ�����H2�������ͼ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            173,
                            '��ù��',
                            '��ù����һ���������ư�֢�Ļ���ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            174,
                            '��ŵ����',
                            '��ŵ������һ�ֿ���Ѫѹҩ����Ҫ�������Ƹ�Ѫѹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            175,
                            'CYP3A4����ҩ',
                            'CYP3A4����ҩ��һ����Լ���ҩ���л���Ӷ��������ҩ��Ũ�ȵ�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            176,
                            'CYP3A4�յ�ҩ',
                            'CYP3A4�յ�ҩ��һ����Լ���ҩ���л���Ӷ���������ҩ��Ũ�ȵ�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            177,
                            '�Ҵ���������������ҩ',
                            '�Ҵ���������������ҩ��һ����Խ�����ϵͳ����������ƽ��ǡ�ʧ�ߵ�֢״��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            178,
                            '��������',
                            '����������һ�ֹ��׿����ҩ����Ҫ��������������Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            179,
                            '����ƽ',
                            '����ƽ��һ���������ƾ������֢�Ŀ�����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            180,
                            '��������ø����ҩ',
                            '��������ø����ҩ��һ��������������֢�Ŀ�����ҩ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            181,
                            '�ض���?',
                            '�ض�����һ��������������ʧ����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            182,
                            '����ɳ��',
                            '����ɳ����һ�ֹ��׿����أ���Ҫ�������ƶ���ϸ����Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            183,
                            '�ط��Ƕ�',
                            '�ط��Ƕ���һ����������ע����ȱ�ݶද�ϰ���ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            184,
                            '��ù��',
                            '��ù����һ�ֿ����أ���Ҫ�������ƶ���ϸ����Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            185,
                            'ά������',
                            'ά��������һ�ָ�ͨ�����ͼ�����Ҫ�������Ƹ�Ѫѹ������ʧ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            186,
                            '������֭',
                            '������֭��һ��ʳ��京�е�ĳЩ�ɷֿ�����ĳЩҩ�﷢���໥���ã�Ӱ��ҩ���Ч���Ͱ�ȫ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            187,
                            '������Τ',
                            '������Τ��һ�ֿ�����ҩ����Ҫ�������ư��̲������͸���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            188,
                            '��ӱ�',
                            '��ӱ���һ���������Ƹ�Ѫѹ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            189,
                            '�ظ���',
                            '�ظ�����һ��������������˥�ߺ�����ʧ����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            190,
                            '������',
                            '��������һ�ֿ����ҩ����Ҫ�������ƽ�˲�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            191,
                            '����ͪ',
                            '����ͪ��һ���������ƾ������֢�Ŀ�����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            192,
                            '����Ѫѹҩ������ѹҩ',
                            '����Ѫѹҩ������ѹҩ��һ�����ڽ���Ѫѹ����Ԥ�������Ƹ�Ѫѹ��ؼ�����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            193,
                            '������',
                            '��������һ�ֹ��׿����ҩ����Ҫ��������������Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            194,
                            '�ر�����',
                            '�ر�������һ����������Ƥ�������Ⱦ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            195,
                            'Ī�����',
                            'Ī�������һ���������ƹ�����˯��������˯�ߺ�����ͣ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            196,
                            '�����涡����ù��',
                            '�����涡�ͺ�ù��������ҩ��ֱ���������θ������θ�����Լ�����ϸ����Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            197,
                            '��̪����',
                            '��̪������һ�ֿ���Ѫѹҩ����Ҫ�������Ƹ�Ѫѹ������˥��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            198,
                            '�Ƽ�ȫ��ҩ�����ֶ�����ʹҩ��������ࡢ��������øA������ҩ�������࿹����ҩ',
                            '��Щҩ����Ҫ����������ʹ�������񲡺Ϳ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            199,
                            '�����涡',
                            '�����涡��һ����������θ������θ�����H2�������ͼ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            200,
                            '������',
                            '��������һ�ֿ���ҩ����Ҫ�������Ʒΰ����ܰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            201,
                            '�޿����',
                            '�޿������һ��������������ɭ����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            202,
                            '������Τ',
                            '������Τ��һ�ֿ�����ҩ����Ҫ���������������Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            203,
                            '������',
                            '��������һ�ֿ����ҩ����Ҫ�����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            204,
                            '����Ī˾',
                            '����Ī˾��һ����������ҩ����Ҫ����Ԥ��������ֲ������췴Ӧ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            205,
                            '������',
                            '��������һ�ֿ���ҩ����Ҫ����Ԥ��������Ѫ˨�γ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            206,
                            '������ƽ��������',
                            '������ƽ�ͱ����������ֿ����ҩ����Ҫ�����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            207,
                            '�������',
                            '���������һ����ҩ����Ҫ���ڽ�������ǰ���򾲻��յ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            208,
                            '�ȵ�ƽ',
                            '�ȵ�ƽ��һ�ֿ�����ҩ����Ҫ�������ƾ������֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            209,
                            '�工����',
                            '�工������һ���������Ƹߵ��̴�Ѫ֢��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            210,
                            '���',
                            '�����һ��֧�������ż�����Ҫ�����������������������Էβ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            211,
                            '�����涡',
                            '�����涡��һ����������θ������θ�����H2�������ͼ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            212,
                            '��ǰ�',
                            '��ǰ���һ����������ƫͷʹ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            213,
                            '������Ӱ��',
                            '������Ӱ����һ�����ڷ���ѧ���ĶԱȼ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            214,
                            'ͷ�߰���',
                            'ͷ�߰�����һ�ֿ����أ���Ҫ�������ƶ���ϸ����Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            215,
                            '����ҩ',
                            '����ҩ��һ������Ԥ��������Ѫ˨�γɵ�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            216,
                            '��ŵ��Τ',
                            '��ŵ��Τ��һ�ֿ�����ҩ����Ҫ�����������͸��׺Ͱ��̲�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            217,
                            '��֬��ҩ��',
                            '��֬��ҩ����һ�����ڽ���ѪҺ�е��̴�ˮƽ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            218,
                            '�����̫��',
                            '�����̫����һ��������������ɭ����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            219,
                            '�׸��д�',
                            '�׸��д���һ�ֽ�Ѫ��ҩ����Ҫ��������2������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            220,
                            '��Ӱ��',
                            '��Ӱ����һ�����ڷ���ѧ���ĶԱȼ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            221,
                            'ʳ��',
                            'ʳ����һ�ֿ����ṩ��������Ӫ�������ʣ�ĳЩʳ�������ĳЩҩ�﷢���໥���ã�Ӱ��ҩ���Ч���Ͱ�ȫ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            222,
                            '���¸�Τ',
                            '���¸�Τ��һ�ֿ�����ҩ����Ҫ�����������͸��׺Ͱ��̲�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            223,
                            '���˿��',
                            '���˿����һ�ֿ�����ɭ��ҩ����Ҫ������������ɭ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            224,
                            '��˾ƥ��',
                            '��˾ƥ����һ�ֿ�ѪС��ҩ����Ҫ����Ԥ������������Ѫ�ܼ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            225,
                            '������',
                            '��������һ����ҩ����Ҫ��������ʧ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            226,
                            '������ȡ��',
                            '������ȡ����һ�ֲ�ҩ����Ҫ���ڸ����Բ�Ѫ�������Ƽ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            227,
                            '�������',
                            '���������һ�ֿ���ҩ����Ҫ�����������ٰ����ѳ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            228,
                            '����̹',
                            '����̹��һ�ֿ���Ѫѹҩ����Ҫ�������Ƹ�Ѫѹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            229,
                            '��ɳ����',
                            '��ɳ������һ�ֿ���ҩ����Ҫ�������Ʒΰ����ѳ�����غ�谩'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            230,
                            '��Ѫ��ҩ���������༰��������ҩ�˫����ҩ��ȵ����Ƽ����ȵ�����������',
                            '��Щҩ����Ҫ���ڿ���Ѫ�ǣ�����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            231,
                            '����̫��',
                            '����̫����һ�ֿ���ҩ����Ҫ�������Ʒ�Сϸ���ΰ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            232,
                            'CYP4503A4���յ���',
                            'CYP4503A4���յ�����һ����Լ���ҩ���л���Ӷ���������ҩ��Ũ�ȵ�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            233,
                            '���࿹����ʧ��ҩ���������ᡢ�������ᡢ��ɳͪ����ŵ�',
                            '��Щҩ����Ҫ������������ʧ����ĳЩ���͵İ�֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            234,
                            '�Ҵ�',
                            '�Ҵ���һ�ֳ����ľƾ������ϳɷ֣��������ÿ��ܵ���һϵ�н������⣬�������༲������ϵͳ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            235,
                            '����ɴ���',
                            '����ɴ�����һ��ǿЧ��ʹҩ����Ҫ���������ض���ʹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            236,
                            '����ມ�̹���¡�������ມ���ɳ��ີȽ������׿�ҩ',
                            '��Щҩ����Ҫ�������ƾ������֢�����������ϰ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            237,
                            '̹������',
                            '̹��������һ���������Ƹ�Ѫѹ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            238,
                            '��������ҩ��',
                            '��������ҩ����һ�����������Ľ�ʹ���������༲����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            239,
                            'ϸ��ɫ��P4503A4���Ƽ�',
                            'ϸ��ɫ��P4503A4���Ƽ���һ����Լ���ҩ���л���Ӷ��������ҩ��Ũ�ȵ�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            240,
                            '������',
                            '��������һ�ֿ����ҩ����Ҫ�����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            241,
                            '�����ػ�װ����ʣ����ڣ�',
                            '�����غͼװ�����������ҩ��ֱ��������ƶ��ֲ�����Ⱦ�Ͱ�Ѫ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            242,
                            '����',
                            '������һ�ֿ�����ҩ����Ҫ�������ƾ������֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            243,
                            '��ɳ������ƥĪ����',
                            '��ɳ������ƥĪ����������ҩ��ֱ���������θ������θ�����Լ�����֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            244,
                            '��˾����',
                            '��˾������һ�ֿ���ҩ����Ҫ��������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            245,
                            '������',
                            '��������һ�ֿ���ҩ����Ҫ����Ԥ��������Ѫ˨�γ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            246,
                            '��������',
                            '����������һ����������ƫͷʹ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            247,
                            '������',
                            '��������һ����ҩ����Ҫ��������ʧ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            248,
                            '�������',
                            '���������һ����ҩ����Ҫ���ڽ�������ǰ���򾲻��յ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            249,
                            '������',
                            '��������һ����������ҩ����Ҫ����Ԥ��������ֲ������췴Ӧ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            250,
                            '��������',
                            '����������һ�ֿ���ҩ����Ҫ��������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            251,
                            '�����涡',
                            '�����涡��һ�ֿ���ҩ����Ҫ��������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            252,
                            '������',
                            '��������һ�ֿ����ҩ����Ҫ�����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            253,
                            '����ͤ',
                            '����ͤ��һ�ֿ�����ɭ��ҩ����Ҫ������������ɭ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            254,
                            '��������',
                            '����������һ�ֿ���ҩ����Ҫ�������Ʒ�Сϸ���ΰ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            255,
                            '��������',
                            '����������һ����ҩ����Ҫ��������ʧ�ߺͽ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            256,
                            '������',
                            '��������һ�ֿ����ҩ����Ҫ�����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            257,
                            '�工����',
                            '�工������һ���������Ƹߵ��̴�Ѫ֢��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            258,
                            '����Ī˾',
                            '����Ī˾��һ����������ҩ����Ҫ����Ԥ��������ֲ������췴Ӧ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            259,
                            '��������',
                            '����������һ��������������ɭ����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            260,
                            '����',
                            '������һ�ֳ����Ĺ���Դ�����ܵ��¹����Ա��ס�������֢״'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            261,
                            '����',
                            '������һ�ֲ�ҩ����Ҫ���ڸ����Բ�Ѫ�������Ƽ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            262,
                            '����',
                            '������һ�ָ�����-3������֬�����Ӫ��������������ڽ���ѪҺ�еĸ�������ˮƽ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            263,
                            '���',
                            '�����һ����ҩ����Ҫ��������ʧ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            264,
                            '����ƽ�����������ȸ�ҩø�յ�ҩ',
                            '��Щҩ����Լ���ҩ���ڸ���Ĵ�л���Ӷ���������ҩ���Ũ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            265,
                            '�������',
                            '���������һ�ֿ���ҩ����Ҫ�����������ٰ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            266,
                            '����͡',
                            '����͡��һ�ֿ�����ҩ����Ҫ������������֢��ǿ��֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            267,
                            '��������',
                            '����������һ���������Ƽ��Թ�����Ӧ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            268,
                            '��̫��',
                            '��̫����һ��ǿЧ��ʹҩ����Ҫ���������ض���ʹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            269,
                            '�����㶹��',
                            '�����㶹����һ�ֿ����ҩ����Ҫ�����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            270,
                            'Ī���ᶨ',
                            'Ī���ᶨ��һ��������������ɭ����ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            271,
                            'CYP3 A4ǿ�յ�ҩ',
                            'CYP3 A4ǿ�յ�ҩ��һ����Լ���ҩ���л���Ӷ���������ҩ��Ũ�ȵ�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            272,
                            '��������',
                            '����������һ�ֿ���ҩ����Ҫ��������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            273,
                            '�̲�',
                            '�̲���һ�ֺ�����Ŷ��Ĳ�Ʒ������ʹ�ÿ��ܵ��¸��ֽ������⣬�����ΰ������ಡ�����������Էβ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            274,
                            '�����࿹����ҩ���ȱ�ມ�������ƽ',
                            '��Щҩ����Ҫ������������֢���������֢�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            275,
                            '�������',
                            '���������һ����������2�����򲡵�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            276,
                            '��������',
                            '����������һ�ֿ���ҩ����Ҫ�����������ٰ����ѳ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            277,
                            '����������������͡',
                            '����������������͡������ҩ��ֱ��������ƹؽ��׺͸ߵ��̴�Ѫ֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            278,
                            '����ͪ',
                            '����ͪ��һ�ֿ�����ҩ����Ҫ�������ƾ������֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            279,
                            '�������',
                            '���������һ�ֿ���ҩ����Ҫ�������ƽ᳦����ֱ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            280,
                            '��������',
                            '����������һ�ֿ����ҩ����Ҫ�������Ƹ��������Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            281,
                            '��������ҩ',
                            '��������ҩ��һ���������Ƹ�Ѫѹ������˥�ߵ�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            282,
                            '�ɴ���',
                            '�ɴ�����һ����ʹҩ����Ҫ���������ж����ض���ʹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            283,
                            '����Ѫѹҩ',
                            '����Ѫѹҩ��һ���������Ƹ�Ѫѹ��ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            284,
                            '��������',
                            '����������һ�ֿ���ҩ����Ҫ��������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            285,
                            '�װ�����',
                            '�װ�������һ�ֿ���ҩ����Ҫ�����������ٰ����ѳ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            286,
                            '������',
                            '��������һ�ֿ���ҩ����Ҫ��������θ������θ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            287,
                            '��Ī����',
                            '��Ī������һ�ֿ����أ���Ҫ�������Ƹ���ϸ����Ⱦ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            288,
                            '����ҩ',
                            '����ҩ��һ�����ڿ���Ѫ�ǣ����������򲡵�ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            289,
                            '������������ø����ҩ',
                            '��Щҩ��������Ƶ�������ø�Ļ��ԣ��Ӷ�Ӱ���񾭵��ʵĴ�л'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            290,
                            '������ƽ���¿���ƽ',
                            '������ƽ�Ͱ¿���ƽ�����ֿ����ҩ����Ҫ�����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            291,
                            '����ड�����ࡢ��ɳͪ���ұ����һ�����ɳ�ҡ�������ͪ',
                            '��Щҩ����Ҫ������������ʹ������֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            292,
                            '��������',
                            '����������һ�ֿ�����ҩ����Ҫ�������ƾ������֢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            293,
                            '��������',
                            '����������һ�ֿ���Ѫѹҩ����Ҫ�������Ƹ�Ѫѹ'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            294,
                            '�������ئ����弤��ҩ',
                            '�������ئ����弤��ҩ��һ�������������������������Էβ���ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            295,
                            '�����',
                            '�������һ�ֿ�����ҩ����������ư�Ѫ�����ܰ����ȶ���������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            296,
                            'ɫ����',
                            'ɫ������һ�ֱ��谱���ᣬ��Ҫ���ںϳɵ����ʺ͵����񾭵��ʡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            297,
                            '����������ǰ�',
                            '�������ͼ��ǰ���һ�������˷ܼ�������������ע����ȱ�ݶද�ϰ���ADHD������˯֢�ȼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            298,
                            '�����',
                            '�������һ�ֿ����أ����������ƺ�������Ⱦ��Ƥ����Ⱦ��ϸ����Ⱦ������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            299,
                            '�Ұ��ᡢ�׻���͡��߼���',
                            '�Ұ��ᡢ�׻���ͺ��߼�����һ��������������ɭ���������Ե��˶��ϰ�������ҩ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            300,
                            '�ƶ���/��Ȳŵ��ͪ',
                            '�ƶ�������Ȳŵ��ͪ��һ������Ů�Ա��кͼ���������Ƶ�ҩ����ϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            301,
                            '��������',
                            '����������һ�ֿ�����ҩ���������������֢�ͽ���֢�Ⱦ����ϰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            302,
                            '��͡��',
                            '��͡��ҩ����һ�����ڽ��͵��̴���Ԥ����Ѫ�ܼ�����ҩ������ڸ�Ѫ֢֬�����ơ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            303,
                            '������',
                            '��������һ����ʹҩ������ڻ����ж����ض���ʹ����������ʹ�Ͱ�֢��ʹ�ȡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            304,
                            '�ڷ�����ҩ',
                            '�ڷ�����ҩ��һ������Ԥ��Ѫ˨�γɵ�ҩ��������������ಡ��Ѫ˨�Լ����ȡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            305,
                            '��³˾��',
                            '��³˾����һ�ֿ�����ҩ������ڻ�������Ա��׺������ȹ����Լ�����֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            306,
                            '�������',
                            '���������һ�ֿڷ�����ҩ�����������2�����򲡺��ȵ��صֿ��ȼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            307,
                            '���淥��͡',
                            '���淥��͡��һ�����ڽ��͵��̴���ҩ����������Ƹ�Ѫ֢֬��Ԥ����Ѫ�ܼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            308,
                            '�����沴',
                            '�����沴��һ���������Ƹ�Ѫѹ���Ľ�ʹ����Ѫ�ܼ�����ҩ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            309,
                            '������ͱ�����ͪ',
                            '������ͱ�����ͪ��һ�࿹���ҩ����������������������Ƽ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            310,
                            '����ҩ����̼�����ơ���������',
                            '����ҩ����̼�����ƺ��������Ƴ���������θ����������������θ����������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            311,
                            '�����¡��ױ�����',
                            '�����ºͼױ�������һ�࿹���ҩ������ڽ�˲������ƺ�Ԥ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            312,
                            'ˮ����',
                            'ˮ������һ�ַǴ���ֹʹҩ�Ϳ���ҩ�������ڻ��������ж���ʹ�ͷ��ȵ�֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            313,
                            '������Ǽ�',
                            '������Ǽ���һ�ֿ�����ɭ��ҩ������ڸ�������ɭ�����˶��ϰ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            314,
                            '������',
                            '��������һ���������Ƽ���������Ԥ��������ֲ�ųⷴӦ���������������Լ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            315,
                            'ѪС��ۼ�����ҩ����˨ҩ�����µ���ѪøԭѪ֢��ѪС����ٵ�ҩ��',
                            'ѪС��ۼ�����ҩ����˨ҩ�����µ���ѪøԭѪ֢��ѪС����ٵ�ҩ����һ������Ԥ��Ѫ˨�γɺ�������Ѫ�ܼ�����ҩ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            316,
                            '�����ǰ�',
                            '�����ǰ���һ�ֿ����ҩ����������������������Ƽ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            317,
                            '�������',
                            '���������һ�ָ��Լ���ҩ����������Ƹ�Ѫѹ���Ľ�ʹ����Ѫ�ܼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            318,
                            '�����濵',
                            '����ҽ������ʹ�������濵��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            319,
                            '��������',
                            '����������һ���������ư�Ѫ��������������ҩ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            320,
                            '�ڷ�����ҩ',
                            '�ڷ�����ҩ��һ�ֳ��õı��з���֮һ���밴��ҽ����ָʾʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            321,
                            '�����',
                            '�������һ�����ڻ�����ʹ�����պͿ��׵ķǴ���ҩ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            322,
                            '������',
                            '��������һ����̴���ҩ���Ҫ���ڿ��ס��������Ƶ����ơ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            323,
                            '����ø���Ƽ�',
                            '����ø���Ƽ���һ��ҩ��������Ƶ���ø�Ļ��ԡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            324,
                            '������ƽ',
                            '������ƽ��һ�ֳ��õĿ����ҩ��밴ҽ����ָʾʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            325,
                            '���',
                            '�����һ��ǿЧ��ʹҩ�����ҽ���ල��ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            326,
                            '�η���ͪ',
                            '�η���ͪ��һ����������ҩ�����ѭҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            327,
                            '������͡',
                            '������͡��һ��������������֢��ҩ�����ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            328,
                            '�������',
                            '���������һ�ֿ�����ҩ����������ƾ������֢��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            329,
                            '���ǿ���',
                            '���ǿ�����һ���������Ƹ�Ѫѹ���Ľ�ʹ��ҩ�����ѭҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            330,
                            '˫����',
                            '˫������һ����ҩ����������ƽ��Ǻ�ʧ�ߡ�����ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            331,
                            '������Ѫ��ƶѪ���ʵ�ҩ��',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            332,
                            '��ø',
                            '��ø��һ�������ܽ�Ѫ˨��ҩ�����ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            333,
                            '����',
                            '������һ�ֳ������������Ʒ���֮һ�����巽������ҽ���ƶ���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            334,
                            '���굨��',
                            '���굨����һ�����ڸ��Ƽ������֪���ܵ�ҩ�����ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            335,
                            'CYP2C9���Ƽ�',
                            'CYP2C9���Ƽ���һ��ҩ�ͨ������CYP2C9ø�Ļ�����ҩ���໥���õ�Ч����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            336,
                            '�������׿�ҩ��������ҩ',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            337,
                            '��������',
                            '����������һ���������ư�֢�Ļ���ҩ�����ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            338,
                            '��������',
                            '����������һ�ֿ�ѪС��ҩ�������Ԥ��Ѫ˨�γɡ�����ѭҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            339,
                            '�������',
                            '���������һ���������Ƹ�Ѫѹ�����ಡ��ҩ��밴��ҽ����ָʾʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            340,
                            '����Ӣ',
                            '����Ӣ��һ�ֿ����ҩ������ڿ�����﷢��������ѭҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            341,
                            '�������׿�ҩ������ҩ��ACEI����ͨ������ҩ',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            342,
                            '��������',
                            '����������һ���������Ƹ�Ѫѹ�����ಡ��ҩ�����ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            343,
                            '�������������������忹��ҩ',
                            '�������������������忹��ҩ�����ڻ�����ʹ�����ס��밴��ҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            344,
                            '�⽻�а���',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            345,
                            '������ƽ',
                            '������ƽ��һ�����������Ľ�ʹ�͸�Ѫѹ��ҩ�����ѭҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            346,
                            '�Ƽ���',
                            '�Ƽ�����һ����Ҫ��Ů�Լ��أ������ڼ���������Ƶȷ��档����ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            347,
                            '�����۰�',
                            '�����۰���һ����������ǰ���ٷʴ��ҩ�����ѭҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            348,
                            'H2�����׿�ҩ',
                            'H2�����׿�ҩ��һ�ೣ�õĿ���ҩ�����������θ����ؼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            349,
                            '�����������ӡ��������֡�������͡��Ļ��ص�',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            350,
                            '����ҩ������θ����ڵ�ҩ��',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            351,
                            '����ͤ',
                            '����ͤ��һ�����ڻ�����Ժ͸�ð֢״��ҩ�����ѭҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            352,
                            '�׵�ƽ',
                            '�׵�ƽ��һ���������ƾ������֢�Ŀ�����ҩ��밴��ҽ����ָʾʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            353,
                            '����5 - HTID���弤����',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            354,
                            '�㶹��',
                            '�㶹����һ�����ÿ������������ڸ���ѪҺѭ��������ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            355,
                            '߻���ס��������ᡢ���������ǿ����ҩ�������桢�����ǵȿ�����ҩ�����������࿹����',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            356,
                            '��Ī���',
                            '��Ī�����һ�ֿ����ҩ������ڿ�����﷢��������ҽ��ָ����ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            357,
                            'Ƥ�ʴ�',
                            'Ƥ�ʴ���һ��Ƥ�ʼ��أ�������������ƺͿ��׵ȷ��档�밴��ҽ����ָʾʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            358,
                            'CYPIA2����ҩ',
                            'CYPIA2����ҩ��һ��ҩ�ͨ������CYPIA2ø�Ļ�����ҩ���໥���õ�Ч����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            359,
                            '����������������ϵͳ��ҩ�Ｐ�Ҵ�',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            360,
                            '������Q-T�����ӳ���ҩ��',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            361,
                            '��������',
                            '����������һ�ֳ��õĿ���ҩ�����������θ����ؼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            362,
                            '˫�ȷ���',
                            '˫�ȷ�����һ�����ڻ�����ʹ�����׵�ҩ��밴��ҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            363,
                            '�����涡',
                            '�����涡��һ����������θ����ؼ�����ҩ�����ѭҽ���Ľ���ʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            364,
                            '�ͱ����ࣨ�籽�ͱ��ף���⾷ҩ������ѣ�',
                            '���ṩ�����ҩ�������Ա�׼ȷ�жϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            365,
                            '������',
                            '��������һ�����ڽ��͵��̴���ҩ����������Ƹ�Ѫ֢֬��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            366,
                            '��������',
                            '����������һ�����ڽ���θ����ڵ�ҩ�����������θ����ȼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            367,
                            '�����',
                            '�������һ����ʹҩ������ڻ����жȵ��ضȵ���ʹ���밴��ҽ����ָʾʹ�á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            368,
                            '����ɳ̹',
                            '����ɳ̹��һ���������Ƹ�Ѫѹ�����༲����ҩ�������Ѫ�ܽ�����II�����׿���������ͨ������Ѫ��������Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            369,
                            '��ù��',
                            '��ù����һ�ֹ��׿����أ����������ƶ��ָ�Ⱦ���������ס���к���ܰ����ȡ�������ͨ����ֹϸ��ϸ���ĵ����ʺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            370,
                            '����ɳ��',
                            '����ɳ����һ���ŵͪ�࿹���أ��������ư����ס������Ⱦ��ϸ���������ȸ�Ⱦ��������ͨ������ϸ��DNA���ƺ�ϸ��������ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            371,
                            '�޷�����',
                            '�޷�������һ���������������������θʳ�ܷ�������ҩ�����ͨ������θ��ķ���������θ���̼����Ӷ�������ʹ�Ͳ��ʸС�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            372,
                            'ͪ����',
                            'ͪ������һ�ֿ����ҩ�Ҳ����������������ʹ�ͽ���֢�ȼ�����������ͨ����ǿ�񾭵���GABA��������ϵͳ�е�������������ʹ�ͽ��ǸС�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            373,
                            '��˾ƥ��',
                            '��˾ƥ����һ��ˮ�������Ƽ��������ڻ�����ʹ�����Ⱥͼ�����֢��������������Ԥ�����ಡ���з�ȼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            374,
                            '������',
                            '��������һ�����Ƹ�Ѫѹ�����༲����ҩ�����һ�������������������ͨ���ٽ���Һ�ų�����������Һ����ۣ��Ӷ�����Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            375,
                            '�������̰�',
                            '�������̰���һ���������ƽ�˲���ҩ�������ͨ������ϸ����ϸ���ںϳɺʹ�л��ɱ����˾���'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            376,
                            '�㶹��',
                            '�㶹����һ��Ѫ�����ż������������������༲����ѭ��ϵͳ������������ͨ������Ѫ�ܺʹٽ�ѪҺ��������������Ӫ�����ʵĹ�Ӧ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            377,
                            'ά������',
                            'ά��������һ����������������θʳ�ܷ���������֢�ȼ�����ҩ�������ͨ���ٽ�θ�����˶�����ǿ��Ͱ�������������֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            378,
                            '�����涡',
                            '�����涡��һ����������θ����������������ҩ�������ͨ������θ��ķ���������θ���̼����ٽ���������ϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            379,
                            '�����涡',
                            '�����涡��һ�ֿ���ҩ�������ڻ���θ���ȡ�θ�����ʳ���׵�֢״��������ͨ������θ��ķ���������θ�����ʡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            380,
                            '������Τ',
                            '������Τ��һ�ֿ�����ҩ����������ƴ�״�������ֳ������Ȳ�����Ⱦ��������ͨ�����Ʋ����ĸ��ƺʹ���������֢״�ʹٽ�������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            381,
                            '����ɳ��',
                            '����ɳ����һ�ֿ���Ѫҩ�������Ԥ��������Ѫ˨�Լ����������Ѫ˨�ͷ�˨����������ͨ��������Ѫ���ӵĻ�������ֹѪ˨�γɡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            382,
                            '������',
                            '��������һ�ֿ���ҩ�����������θ�������������ٰ��ȶ���������������ͨ����������ϸ���������ͷ��������������ķ�չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            383,
                            '˾��ɳ��',
                            '˾��ɳ����һ���ŵͪ�࿹���أ�����������·��Ⱦ�ͺ�������Ⱦ��ϸ����Ⱦ��������ͨ������ϸ��DNA�ĸ��ƺͺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            384,
                            '����ɳ��',
                            '����ɳ����һ�ֹ��׿����أ����������ƺ�����������ϵͳ��Ƥ������֯��Ⱦ�ȼ�����������ͨ�����ϸ��DNA�ĸ��ƺͺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            385,
                            '߻ɽ��Τ',
                            '߻ɽ��Τ��һ�ֿ�����ҩ����������ư��̲�������HIV����Ⱦ��������ͨ�����Ʋ����ĸ��ƺʹ��������������Ľ�չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            386,
                            'ͷ�߲�ϩ',
                            'ͷ�߲�ϩ��һ��ͷ�߾����࿹���أ�����������ϸ����Ⱦ�����������Ⱦ��Ƥ������֯��Ⱦ��������ͨ�����ϸ��ϸ���ڵĺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            387,
                            'ͷ�߲��',
                            'ͷ�߲����һ��ͷ�߾����࿹���أ����������ƺ�������Ⱦ������ϵͳ��Ⱦ��ϸ����Ⱦ��������ͨ�����ϸ��ϸ���ڵĺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            388,
                            '���״����',
                            '���״������һ�ּ�״�ټ���ҩ����������Ƽ�״�ٹ��ܼ��˺ͼ�״�ٰ��ȼ����������Բ������ڼ�״�ټ��صĲ��㣬���ڴ�л��ά�������������ܡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            389,
                            '�������',
                            '���������һ�ְ�������ҩ����������Ʒΰ���θ�����������ȶ���������������ͨ����������ϸ������������ɢ�����������ķ�չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            390,
                            '�������',
                            '���������һ�ַ�ѡ���Ԧ�������ϼ������������Ƹ�Ѫѹ���Ľ�ʹ������ʧ������Ѫ�ܼ�����������ͨ������������ضԦ�������������������ʺ�Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            391,
                            '������',
                            '��������һ�ֿ�����ҩ����������ƾ������֢��˫������ϰ��Ⱦ��񼲲���������ͨ���������ڶ�Ͱ���5-��ɫ�����񾭵��ʵĻ�����ᾫ��֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            392,
                            '����˾��',
                            '����˾����һ��ѡ����5-��ɫ�������׿��������������ƹ����Ա��׺������Ⱥ�����������������ͨ�����5-��ɫ����������������������֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            393,
                            '����ù��',
                            '����ù����һ�ֹ��׿����أ������������Ϻ�������Ⱦ��Ƥ������֯��Ⱦ��ϸ����Ⱦ��������ͨ������ϸ�������ʺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            394,
                            '������ͪ',
                            '������ͪ��һ���򾲼��ʹ���ҩ�����������ƽ��Ǻ�ʧ�ߵ�֢״��������ͨ��Ӱ��������ϵͳ��GABA�����������򾲺ʹ������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            395,
                            '����������',
                            '������������һ�ֿ���ҩ����������Ƽ���������ϸ����Ѫ���ͼ��Դٺ�ϸ��������ϸ����Ѫ����ѪҺ����������������ͨ���յ�ϸ�����������ư�Ѫ����ϸ������ֳ�����������ķ�չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            396,
                            '��������',
                            '����������һ���񾭾���ҩ����������ƾ������֢������֢������ϰ��Ⱦ��񼲲���������ͨ����϶�Ͱ�D2��������������ᾫ��֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            397,
                            '������',
                            '��������һ�ָ�ͨ�����ͼ��������������Ľ�ʹ�͸�Ѫѹ����Ѫ�ܼ�����������ͨ����ϸ����ӽ����ļ���ƽ����ϸ�����������ʺ�Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            398,
                            '�����ɳ��',
                            '�����ɳ����һ�ַ����忹��ҩ�������ڻ��������ж���ʹ�ͷ��ȵ�֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            399,
                            '�������',
                            '���������һ�ַ�ѡ���Ԧ�������ϼ������������Ƹ�Ѫѹ���Ľ�ʹ������ʧ������Ѫ�ܼ�����������ͨ������������ضԦ�������������������ʺ�Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            400,
                            'ͪɫ��',
                            'ͪɫ����һ�����ӱ����Ƽ�������������θ���������������θʳ�ܷ�������θ����������������ͨ������θ��ķ���������θ�����ʺʹٽ���������ϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            401,
                            '������Ʒ',
                            '������Ʒ��һ�ֿ�����ҩ���������������������͹�״����ȱѪ�ȼ�����������ͨ����ϵ����M��������������ٵ�֭���ڡ���������ƽ�������������Ź�״������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            402,
                            '�����',
                            '�������һ���򾲼��Ϳ�����ҩ�����������ƽ��ǡ�ʧ�ߺ����ȼ�����������ͨ��Ӱ��������ϵͳ��GABA�����������򾲺Ϳ��������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            403,
                            '���Ѵ�',
                            '���Ѵ���һ��������ͽ�ѹҩ�����������Ƹ�Ѫѹ��ˮ�׺�����˥�ߵȼ�����������ͨ������������Na+/Cl-��ת�������������ǿ�����Ӻ�ˮ�ֵ���й��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            404,
                            '�������ҩ��',
                            '�������ҩ����һ�ֿ�����ҩ����������ƾ������֢��˫������ϰ��Ⱦ��񼲲���������ͨ����϶�Ͱ�D2��������������ᾫ��֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            405,
                            '��������',
                            '����������һ�ַ����忹��ҩ�������ڻ��������ж���ʹ�ͷ��ȵ�֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            406,
                            '߻����',
                            '߻������һ������������������Ƹ�Ѫѹ��ˮ�׺�����˥�ߵȼ�����������ͨ������������Na+/K+/2Cl-��ת�������������ǿ�����ӡ������Ӻ�ˮ�ֵ���й��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            407,
                            '��Ͱ�',
                            '��Ͱ���һ���񾭵��ʺͺɶ��ɣ���������������ɭ������Դ���ݿ˵ȼ�����������ͨ��Ӱ��������ϵͳ��ĩ��Ѫ��ϵͳ�����������������Ѫ�ܵ����á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            408,
                            '����ɳ̹',
                            '����ɳ̹��һ��Ѫ�ܽ����آ������׿��������������Ƹ�Ѫѹ������˥�ߵȼ�����������ͨ�����Ѫ�ܽ����آ�����������������Ѫѹ�����ฺ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            409,
                            '������������',
                            '��������������һ�ֽ�����ʹҩ�������ڻ��������жȵ�ͷʹ����ʹ���ؽ�ʹ������ʹ����ð�ͷ��ȵ�֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            410,
                            '�ͱ�����ҩ',
                            '�ͱ�����ҩ��һ����ҩ�ʹ���ҩ�����������ƽ��ǡ�ʧ�ߡ����;��εȼ�����������ͨ����ǿGABA�������������򾲺Ϳ��������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            411,
                            '�з���̹',
                            '�з���̹��һ�ֿ�ѪС��ҩ�������Ԥ����������Ѫ�ܼ�����Ѫ˨�γɡ�������ͨ������ѪС��ۼ��ͼ���Ѫ˨���γ���������Ѫ���¼��ķ����ʡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            412,
                            '��ʹ��ҩ',
                            '��ʹ��ҩ��һ����������ʹ��͸�����Ѫ֢��ҩ������������NSAIDs�����ֶ��ͱ��Ѵ��ȡ����ǿ���ͨ����ͬ�Ļ��������ٹؽ���֢������ˮƽ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            413,
                            '�⽻�а���ҩ',
                            '�⽻�а���ҩ��һ��ҩ�����������������֧���ܾ��κ͹����Ա��׵Ⱥ��������������ǿ���ͨ��ģ�⽻����ϵͳ������������֧���ܺͼ��ٷ�����ķ��ڡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            414,
                            '�������',
                            '���������һ�ַ����忹��ҩ�������ڻ��������жȵ�ͷʹ����ʹ���ؽ�ʹ������ʹ��ʹ������ʹ֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            415,
                            '�Ȼ���',
                            '�Ȼ�����һ�ֳ�����������ˮ�������ھ���ע�䡢�ڷ����೦��Ƥ��ע���;�������������ڲ�����Һ�����ڵ����ƽ���ά��ϸ�����ܡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            416,
                            '��ػ���ҩ�����ͪ��',
                            '��ػ���ҩ��Ͱ���ͪ��һ����Ѫ��ҩ��������������༲��������˥�ߺ�����ʧ���ȡ����ǿ���ͨ����ͬ�Ļ�������ǿ�������������ȶ����ɡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            417,
                            '���������������������ҩ��',
                            '���������������������ҩ����һ��ҩ�����������������֧���ܾ��κ͹����Ա��׵Ⱥ��������������ǿ���ͨ��ģ���������ص�����������֧���ܺͼ��ٷ�����ķ��ڡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            418,
                            '�������',
                            '���������һ�ַ����忹��ҩ�������ڻ��������жȵ�ͷʹ����ʹ���ؽ�ʹ������ʹ��ʹ������ʹ֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            419,
                            '̼������',
                            '̼��������һ�ֳ����ļ���ҩ�����������θ����ࡢ��л�����ж�����·��Ⱦ�ȼ������������к����ڹ�����������ʺ�������Һ��pHֵ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            420,
                            '��������',
                            '����������һ��Ѫ�ܽ�����ת��ø���Ƽ������������Ƹ�Ѫѹ������˥�ߵ���Ѫ�ܼ�����������ͨ������Ѫ�ܽ����آ�ת��ΪѪ�ܽ����آ������������Ѫѹ�����ฺ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            421,
                            'ά����D',
                            'ά����D��һ��֬����ά���أ�������Ԥ�������ƹ�������֢�����Ͳ��ͼ������ȼ����������Դٽ��Ƶ����պ����ã����ڸ��״�л��ά�ֹ���������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            422,
                            '��ɳ̹',
                            '��ɳ̹��һ��Ѫ�ܽ����آ������׿��������������Ƹ�Ѫѹ������˥�ߵ���Ѫ�ܼ�����������ͨ�����Ѫ�ܽ����آ�����������������Ѫѹ�����ฺ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            423,
                            '�Ƕ�����',
                            '�Ƕ�������һ�ֿ����ҩ��������������������鴤�Լ�����������ͨ����ǿGABA���������������������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            424,
                            '������Ƥ�ʼ���',
                            '������Ƥ�ʼ�����һ����Դ�Լ��أ����������ƶ�����֢�Ժ�������ؼ���������������ʪ�Թؽ��ס�������Ӧ���������߼����ȡ�����ͨ��������֢��Ӧ����������ϵͳ���Ȼ�Ծ���������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            425,
                            '��������Ƥ�ʼ���',
                            '��������Ƥ�ʼ�����һ��ҩ����������������ٹ��ܲ�ȫ��������������Ƥ������֢�ȼ��������ǿ���ͨ���̼�������Ƥ�ʲ��������������Ƥ�ʼ�������������ȱ����״̬��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            426,
                            '�Ƽ���',
                            '�Ƽ�����һ��Ů�Լ��أ����������Ƹ������ۺ�������������֢�����ٰ��ȼ��������ǿ���ͨ������򲹳�����ȱ���ĴƼ�����ά�������������ܡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            427,
                            '����ù��B',
                            '����ù��B��һ�ֿ����ҩ��������������ص������Ⱦ���ر��Ƕ������������ù������Ч��������ͨ���������ϸ���ڵĺϳ�����������������ͷ�ֳ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            428,
                            '��������',
                            '����������һ��Ѫ�ܽ�����ת��ø���Ƽ������������Ƹ�Ѫѹ������˥�ߵ���Ѫ�ܼ�����������ͨ������Ѫ�ܽ����آ�ת��ΪѪ�ܽ����آ������������Ѫѹ�����ฺ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            429,
                            '����鰷',
                            '����鰷��һ�ֿ����ҩ����������ƽ�˲���������ͨ�����ƽ�˾��������ͷ�ֳ���ﵽ����Ч����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            430,
                            'B�������������׿�ҩ',
                            'B�������������׿�ҩ��һ��ҩ����������Ƹ�Ѫѹ���Ľ�ʹ������˥�ߵȼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            431,
                            '��Ƽ�',
                            '��Ƽ���һ��ҩ�����������˫������ϰ�������֢��������֢�Ͳ��־��񼲲��ȡ����ǿ���ͨ��Ӱ���񾭵��ʵĴ�л���ͷ�����������������״̬��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            432,
                            '�����涡',
                            '�����涡��һ����������θ����������������ҩ�������ͨ������θ��ķ���������θ���̼����ٽ���������ϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            433,
                            '�����涡',
                            '�����涡��һ�ֿ���ҩ�������ڻ���θ���ȡ�θ�����ʳ���׵�֢״��������ͨ������θ��ķ���������θ�����ʡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            434,
                            '������Τ',
                            '������Τ��һ�ֿ�����ҩ����������ƴ�״�������ֳ������Ȳ�����Ⱦ��������ͨ�����Ʋ����ĸ��ƺʹ���������֢״�ʹٽ�������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            435,
                            '����ɳ��',
                            '����ɳ����һ�ֿ���Ѫҩ�������Ԥ��������Ѫ˨�Լ����������Ѫ˨�ͷ�˨����������ͨ��������Ѫ���ӵĻ�������ֹѪ˨�γɡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            436,
                            '������',
                            '��������һ�ֿ���ҩ�����������θ�������������ٰ��ȶ���������������ͨ����������ϸ���������ͷ��������������ķ�չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            437,
                            '˾��ɳ��',
                            '˾��ɳ����һ���ŵͪ�࿹���أ�����������·��Ⱦ�ͺ�������Ⱦ��ϸ����Ⱦ��������ͨ������ϸ��DNA�ĸ��ƺͺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            438,
                            '����ɳ��',
                            '����ɳ����һ�ֹ��׿����أ����������ƺ�����������ϵͳ��Ƥ������֯��Ⱦ�ȼ�����������ͨ�����ϸ��DNA�ĸ��ƺͺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            439,
                            '߻ɽ��Τ',
                            '߻ɽ��Τ��һ�ֿ�����ҩ����������ư��̲�������HIV����Ⱦ��������ͨ�����Ʋ����ĸ��ƺʹ��������������Ľ�չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            440,
                            'ͷ�߲�ϩ',
                            'ͷ�߲�ϩ��һ��ͷ�߾����࿹���أ�����������ϸ����Ⱦ�����������Ⱦ��Ƥ������֯��Ⱦ��������ͨ�����ϸ��ϸ���ڵĺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            441,
                            'ͷ�߲��',
                            'ͷ�߲����һ��ͷ�߾����࿹���أ����������ƺ�������Ⱦ������ϵͳ��Ⱦ��ϸ����Ⱦ��������ͨ�����ϸ��ϸ���ڵĺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            442,
                            '���״����',
                            '���״������һ�ּ�״�ټ���ҩ����������Ƽ�״�ٹ��ܼ��˺ͼ�״�ٰ��ȼ����������Բ������ڼ�״�ټ��صĲ��㣬���ڴ�л��ά�������������ܡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            443,
                            '�������',
                            '���������һ�ְ�������ҩ����������Ʒΰ���θ�����������ȶ���������������ͨ����������ϸ������������ɢ�����������ķ�չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            444,
                            '�������',
                            '���������һ�ַ�ѡ���Ԧ�������ϼ������������Ƹ�Ѫѹ���Ľ�ʹ������ʧ������Ѫ�ܼ�����������ͨ������������ضԦ�������������������ʺ�Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            445,
                            '������',
                            '��������һ�ֿ�����ҩ����������ƾ������֢��˫������ϰ��Ⱦ��񼲲���������ͨ���������ڶ�Ͱ���5-��ɫ�����񾭵��ʵĻ�����ᾫ��֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            446,
                            '����˾��',
                            '����˾����һ��ѡ����5-��ɫ�������׿��������������ƹ����Ա��׺������Ⱥ�����������������ͨ�����5-��ɫ����������������������֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            447,
                            '����ù��',
                            '����ù����һ�ֹ��׿����أ������������Ϻ�������Ⱦ��Ƥ������֯��Ⱦ��ϸ����Ⱦ��������ͨ������ϸ�������ʺϳ���ɱ��ϸ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            448,
                            '������ͪ',
                            '������ͪ��һ���򾲼��ʹ���ҩ�����������ƽ��Ǻ�ʧ�ߵ�֢״��������ͨ��Ӱ��������ϵͳ��GABA�����������򾲺ʹ������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            449,
                            '����������',
                            '������������һ�ֿ���ҩ����������Ƽ���������ϸ����Ѫ���ͼ��Դٺ�ϸ��������ϸ����Ѫ����ѪҺ����������������ͨ���յ�ϸ�����������ư�Ѫ����ϸ������ֳ�����������ķ�չ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            450,
                            '��������',
                            '����������һ���񾭾���ҩ����������ƾ������֢������֢������ϰ��Ⱦ��񼲲���������ͨ����϶�Ͱ�D2��������������ᾫ��֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            451,
                            '������',
                            '��������һ�ָ�ͨ�����ͼ��������������Ľ�ʹ�͸�Ѫѹ����Ѫ�ܼ�����������ͨ����ϸ����ӽ����ļ���ƽ����ϸ�����������ʺ�Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            452,
                            '�����ɳ��',
                            '�����ɳ����һ�ַ����忹��ҩ�������ڻ��������ж���ʹ�ͷ��ȵ�֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            453,
                            '�������',
                            '���������һ�ַ�ѡ���Ԧ�������ϼ������������Ƹ�Ѫѹ���Ľ�ʹ������ʧ������Ѫ�ܼ�����������ͨ������������ضԦ�������������������ʺ�Ѫѹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            454,
                            'ͪɫ��',
                            'ͪɫ����һ�����ӱ����Ƽ�������������θ���������������θʳ�ܷ�������θ����������������ͨ������θ��ķ���������θ�����ʺʹٽ���������ϡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            455,
                            '������Ʒ',
                            '������Ʒ��һ�ֿ�����ҩ���������������������͹�״����ȱѪ�ȼ�����������ͨ����ϵ����M��������������ٵ�֭���ڡ���������ƽ�������������Ź�״������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            456,
                            '�����',
                            '�������һ���򾲼��Ϳ�����ҩ�����������ƽ��ǡ�ʧ�ߺ����ȼ�����������ͨ��Ӱ��������ϵͳ��GABA�����������򾲺Ϳ��������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            457,
                            '���Ѵ�',
                            '���Ѵ���һ��������ͽ�ѹҩ�����������Ƹ�Ѫѹ��ˮ�׺�����˥�ߵȼ�����������ͨ������������Na+/Cl-��ת�������������ǿ�����Ӻ�ˮ�ֵ���й��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            458,
                            '�������ҩ��',
                            '�������ҩ����һ�ֿ�����ҩ����������ƾ������֢��˫������ϰ��Ⱦ��񼲲���������ͨ����϶�Ͱ�D2��������������ᾫ��֢״��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            459,
                            '��������',
                            '����������һ�ַ����忹��ҩ�������ڻ��������ж���ʹ�ͷ��ȵ�֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            460,
                            '߻����',
                            '߻������һ������������������Ƹ�Ѫѹ��ˮ�׺�����˥�ߵȼ�����������ͨ������������Na+/K+/2Cl-��ת�������������ǿ�����ӡ������Ӻ�ˮ�ֵ���й��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            461,
                            '��Ͱ�',
                            '��Ͱ���һ���񾭵��ʺͺɶ��ɣ���������������ɭ������Դ���ݿ˵ȼ�����������ͨ��Ӱ��������ϵͳ��ĩ��Ѫ��ϵͳ�����������������Ѫ�ܵ����á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            462,
                            '����ɳ̹',
                            '����ɳ̹��һ��Ѫ�ܽ����آ������׿��������������Ƹ�Ѫѹ������˥�ߵȼ�����������ͨ�����Ѫ�ܽ����آ�����������������Ѫѹ�����ฺ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            463,
                            '������������',
                            '��������������һ�ֽ�����ʹҩ�������ڻ��������жȵ�ͷʹ����ʹ���ؽ�ʹ������ʹ����ð�ͷ��ȵ�֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            464,
                            '�ͱ�����ҩ',
                            '�ͱ�����ҩ��һ����ҩ�ʹ���ҩ�����������ƽ��ǡ�ʧ�ߡ����;��εȼ�����������ͨ����ǿGABA�������������򾲺Ϳ��������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            465,
                            '�з���̹',
                            '�з���̹��һ�ֿ�ѪС��ҩ�������Ԥ����������Ѫ�ܼ�����Ѫ˨�γɡ�������ͨ������ѪС��ۼ��ͼ���Ѫ˨���γ���������Ѫ���¼��ķ����ʡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            466,
                            '��ʹ��ҩ',
                            '��ʹ��ҩ��һ����������ʹ��͸�����Ѫ֢��ҩ������������NSAIDs�����ֶ��ͱ��Ѵ��ȡ����ǿ���ͨ����ͬ�Ļ��������ٹؽ���֢������ˮƽ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            467,
                            '�⽻�а���ҩ',
                            '�⽻�а���ҩ��һ��ҩ�����������������֧���ܾ��κ͹����Ա��׵Ⱥ��������������ǿ���ͨ��ģ�⽻����ϵͳ������������֧���ܺͼ��ٷ�����ķ��ڡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            468,
                            '�������',
                            '���������һ�ַ����忹��ҩ�������ڻ��������жȵ�ͷʹ����ʹ���ؽ�ʹ������ʹ��ʹ������ʹ֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            469,
                            '�Ȼ���',
                            '�Ȼ�����һ�ֳ�����������ˮ�������ھ���ע�䡢�ڷ����೦��Ƥ��ע���;�������������ڲ�����Һ�����ڵ����ƽ���ά��ϸ�����ܡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            470,
                            '��ػ���ҩ�����ͪ��',
                            '��ػ���ҩ��Ͱ���ͪ��һ����Ѫ��ҩ��������������༲��������˥�ߺ�����ʧ���ȡ����ǿ���ͨ����ͬ�Ļ�������ǿ�������������ȶ����ɡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            471,
                            '���������������������ҩ��',
                            '���������������������ҩ����һ��ҩ�����������������֧���ܾ��κ͹����Ա��׵Ⱥ��������������ǿ���ͨ��ģ���������ص�����������֧���ܺͼ��ٷ�����ķ��ڡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            472,
                            '�������',
                            '���������һ�ַ����忹��ҩ�������ڻ��������жȵ�ͷʹ����ʹ���ؽ�ʹ������ʹ��ʹ������ʹ֢״��������ͨ����������ǰ�����صĺϳ���������֢����ʹ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            473,
                            '̼������',
                            '̼��������һ�ֳ����ļ���ҩ�����������θ����ࡢ��л�����ж�����·��Ⱦ�ȼ������������к����ڹ�����������ʺ�������Һ��pHֵ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            474,
                            '��������',
                            '����������һ��Ѫ�ܽ�����ת��ø���Ƽ������������Ƹ�Ѫѹ������˥�ߵ���Ѫ�ܼ�����������ͨ������Ѫ�ܽ����آ�ת��ΪѪ�ܽ����آ������������Ѫѹ�����ฺ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            475,
                            'ά����D',
                            'ά����D��һ��֬����ά���أ�������Ԥ�������ƹ�������֢�����Ͳ��ͼ������ȼ����������Դٽ��Ƶ����պ����ã����ڸ��״�л��ά�ֹ���������'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            476,
                            '��ɳ̹',
                            '��ɳ̹��һ��Ѫ�ܽ����آ������׿��������������Ƹ�Ѫѹ������˥�ߵ���Ѫ�ܼ�����������ͨ�����Ѫ�ܽ����آ�����������������Ѫѹ�����ฺ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            477,
                            '�Ƕ�����',
                            '�Ƕ�������һ�ֿ����ҩ��������������������鴤�Լ�����������ͨ����ǿGABA���������������������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            478,
                            '������Ƥ�ʼ���',
                            '������Ƥ�ʼ�����һ����Դ�Լ��أ����������ƶ�����֢�Ժ�������ؼ���������������ʪ�Թؽ��ס�������Ӧ���������߼����ȡ�����ͨ��������֢��Ӧ����������ϵͳ���Ȼ�Ծ���������á�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            479,
                            '��������Ƥ�ʼ���',
                            '��������Ƥ�ʼ�����һ��ҩ����������������ٹ��ܲ�ȫ��������������Ƥ������֢�ȼ��������ǿ���ͨ���̼�������Ƥ�ʲ��������������Ƥ�ʼ�������������ȱ����״̬��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            480,
                            '�Ƽ���',
                            '�Ƽ�����һ��Ů�Լ��أ����������Ƹ������ۺ�������������֢�����ٰ��ȼ��������ǿ���ͨ������򲹳�����ȱ���ĴƼ�����ά�������������ܡ�'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            481,
                            '����ù��B',
                            '����ù��B��һ�ֿ����ҩ��������������ص������Ⱦ���ر��Ƕ������������ù������Ч��������ͨ���������ϸ���ڵĺϳ�����������������ͷ�ֳ��'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            482,
                            '��������',
                            '����������һ��Ѫ�ܽ�����ת��ø���Ƽ������������Ƹ�Ѫѹ������˥�ߵ���Ѫ�ܼ�����������ͨ������Ѫ�ܽ����آ�ת��ΪѪ�ܽ����آ������������Ѫѹ�����ฺ����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            483,
                            '����鰷',
                            '����鰷��һ�ֿ����ҩ����������ƽ�˲���������ͨ�����ƽ�˾��������ͷ�ֳ���ﵽ����Ч����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            484,
                            'B�������������׿�ҩ',
                            'B�������������׿�ҩ��һ��ҩ����������Ƹ�Ѫѹ���Ľ�ʹ������˥�ߵȼ�����'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            485,
                            '��Ƽ�',
                            '��Ƽ���һ��ҩ�����������˫������ϰ�������֢��������֢�Ͳ��־��񼲲��ȡ����ǿ���ͨ��Ӱ���񾭵��ʵĴ�л���ͷ�����������������״̬��'
                        );


-- ��drug_interaction
DROP TABLE IF EXISTS drug_interaction;

CREATE TABLE IF NOT EXISTS drug_interaction (
    id          INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    drug1       VARCHAR (200) NOT NULL,
    drug2       VARCHAR (200) NOT NULL,
    interaction VARCHAR (200) NOT NULL
);

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 1,
                                 '����ͪ',
                                 'ͪ����',
                                 '��������ͪ�����ڵĴ�л���Ӷ����ӻ���ͪ���������ö�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 2,
                                 '����ͪ',
                                 'ͪ����',
                                 '��������ͪ�����ڵĴ�л���Ӷ����ӻ���ͪ���������ö�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 3,
                                 '���ݻ�ͪ',
                                 'CYP3A4����ҩ',
                                 '���ú�ù�ء������࿹���ҩ��CYP3A4����ҩ�����ñ�Ʒ��ʹ���Ũ�����ߣ�AUC����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 4,
                                 '���ݻ�ͪ',
                                 'CYP3A4�յ�ҩ',
                                 '���ݻ�ͪ�Ĵ�л�ӿ죬ʹ�俹�������ý���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 5,
                                 '���ݻ�ͪ',
                                 '�Ҵ���������������ҩ',
                                 '��ʹ��������������ǿ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 6,
                                 '���ݻ�ͪ',
                                 '��������',
                                 '��������ͨ������CYP3A4�����ٶ��ݻ�ͪ���׹�ЧӦ, �������������ö�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 7,
                                 '���ݻ�ͪ',
                                 '����ƽ',
                                 '����ƽ�յ�CYP3A4���ӿ춡�ݻ�ͪ�Ĵ�л, ���Ƕ�Ѫ�����л��Ե���ິ�л��û��������Ӱ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 8,
                                 '���ݻ�ͪ',
                                 '��������ø����ҩ',
                                 '��ʹѪѹ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 9,
                                 '���ݻ�ͪ',
                                 '�ض���?',
                                 '�ض���������CYP3A4�����ᶡ�ݻ�ͪ���׹�ЧӦ, ������������ö�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 10,
                                 '���ݻ�ͪ',
                                 '����ɳ��',
                                 '����ɳ�����ƶ��ݻ�ͪ�Ĵ�л, ���ٻ��Դ�л��1-PP��Ѫ��Ũ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 11,
                                 '���ݻ�ͪ',
                                 '�ط��Ƕ�',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 12,
                                 '���ݻ�ͪ',
                                 '��ù��',
                                 '��ù��ͨ������CYP3A4�����ٶ��ݻ�ͪ���׹�ЧӦ, �������������ö�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 13,
                                 '���ݻ�ͪ',
                                 'ά������',
                                 'ά������ͨ������CYP3A4�����ᶡ�ݻ�ͪ���׹�ЧӦ, ������������ö�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 14,
                                 '���ݻ�ͪ',
                                 '������֭',
                                 '���ݻ�ͪ���׹�ЧӦ����, ������֭���������Ƴ���CYP3A4��P-gp, �������Ӷ��ݻ�ͪ���������ö�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 15,
                                 '������',
                                 '������Τ',
                                 '������Τͨ������CYP3A4����������i���ص����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 16,
                                 '������',
                                 '��ӱ�',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 17,
                                 '������',
                                 '�ض���?',
                                 '�ض�������������������صĴ�л����ǿ����Ч'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 18,
                                 '������',
                                 '�ظ���',
                                 '�����ӵظ���ѪҩŨ�ȶ����ж�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 19,
                                 '������',
                                 '������',
                                 '���Ʊ�Ʒ��������ѪҩŨ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 20,
                                 '������',
                                 '����ͪ',
                                 '���ڼ������ߴ�л�����������ͪ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 21,
                                 '������',
                                 '����Ѫѹҩ������ѹҩ',
                                 '��ʹ��ѹ������ǿ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 22,
                                 '������',
                                 '������',
                                 '������ͨ������CYP3A4���������������صĴ�л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 23,
                                 '������',
                                 '�ر�����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 24,
                                 '������',
                                 'Ī�����',
                                 'Ī����������յ�����CYP3A4/5���Ը����CYP3AӰ���С�������������صĳ����׹�ЧӦ���������������ö�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 25,
                                 '������',
                                 '������֭',
                                 '�Ʋ�������������֭�����������Ƴ����͸����CYP3A4�����������صĴ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 26,
                                 '������',
                                 '�����涡����ù��',
                                 '�����Ʊ�Ʒ�ڸ���Ĵ�л������ѪҩŨ�����ߣ���Ҫʱ����ҩ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 27,
                                 '������',
                                 '��̪����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 28,
                                 '������',
                                 '�Ƽ�ȫ��ҩ�����ֶ�����ʹҩ��������ࡢ��������øA������ҩ�������࿹����ҩ',
                                 '�ɱ˴���Ч��Ӧ������������Ƭ����ʹҩ����������Ӧ����1/3��Ƭ����ʹҩ����������Ӧ����1/3��������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 29,
                                 '������',
                                 'ͪ����',
                                 'ͪ����ͨ�����������صĸ����׹�ЧӦ��������������������öȣ����������صĴ�л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 30,
                                 '������',
                                 '�����涡',
                                 '�Ʋ������涡ͨ�����θ����pH��������Ӷ������е������ص�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 31,
                                 '�������',
                                 '������',
                                 '������າ�������Ч����ת����ϸ������ҩ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 32,
                                 '������',
                                 '�޿����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 33,
                                 '������',
                                 '������Τ',
                                 '�Ʋ�����澺���Ե���������͸����Ĥת���������������Τ�Ĵ�л�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 34,
                                 '�������ù��',
                                 '������',
                                 '���ܻ����Ǳ�ڵ���Ѫ�ܲ���֢����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 35,
                                 '�������ù��',
                                 '����Ī˾',
                                 '��ʹ����Ī˾ѪҩŨ����������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 36,
                                 '�������ù��',
                                 '������',
                                 '���ӳ�Ѫ��Σ���ԣ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 37,
                                 '�������ù��',
                                 '������ƽ��������',
                                 '���º���ѪҩŨ�����߶��������Է�Ӧ����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 38,
                                 '�������ù��',
                                 '�������',
                                 '�������������ǿ�����ã���������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 39,
                                 '�������ù��',
                                 '�ظ���',
                                 '��ʹ�ظ���Ũ�����߽϶࣬�������ӣ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 40,
                                 '�������ù��',
                                 '�ȵ�ƽ',
                                 '�����ȵ�ƽѪҩŨ�����ߣ���������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 41,
                                 '�������ù��',
                                 '�工����',
                                 '����������Ƽ��ܽ⣬�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 42,
                                 '�������ù��',
                                 '���',
                                 '����Ѫ����Ũ�����ߺͣ��򣩶��Է�Ӧ���ӣ���������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 43,
                                 '�������ù��',
                                 '�����涡',
                                 '���º�ù��ѪҩŨ�����ߣ��������ˣ���������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 44,
                                 '�������ù��',
                                 '��ǰ�',
                                 '�ɵ��³�������ж�֢״����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 45,
                                 '����˫��',
                                 '������Ӱ��',
                                 '��Ӱǰ��48Сʱ���ö���˫��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 46,
                                 '����˫��',
                                 'ͷ�߰���',
                                 '�Ʋ�ͷ�߰��������˫�Ҿ���������й, ��������˫�ҵ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 47,
                                 '����˫��',
                                 '����ҩ',
                                 '��ǿ����ҩ���绪���ֵȣ��Ŀ���Ѫ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 48,
                                 '����˫��',
                                 '��ŵ��Τ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 49,
                                 '����˫��',
                                 '��֬��ҩ��',
                                 '��Ʒͬ���ɼ��ٱ�Ʒ��θ����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 50,
                                 '����˫��',
                                 '�����̫��',
                                 '����˫����Ҫ��С������, �����̫�ּ���θ���䶯, �����ڶ���˫�ҵ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 51,
                                 '����˫��',
                                 '�׸��д�',
                                 'ҩЧѧ��Эͬ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 52,
                                 '����˫��',
                                 '�����涡',
                                 '���ӱ�Ʒ���������öȣ�����������������ʣ����ߺ���ʱ���������ᣯ��ͪ���ֵ����Ӧ���ٱ�Ʒ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 53,
                                 '����˫��',
                                 '��Ӱ��',
                                 '��Ӱ���Ѿ���֤ʵ���Ե������ص�������, �ر��������껼��Ⱥ��, ��˿ɵ��¶���˫��������շ��������ж�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 54,
                                 '����˫��',
                                 'ʳ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 55,
                                 '�˲�',
                                 '�������',
                                 '�˲ο����յ�����ͳ�����CYP3A���Զ��ӿ�������صĴ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 56,
                                 '����Ī˾',
                                 '���¸�Τ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 57,
                                 '��������',
                                 '���˿��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 58,
                                 '��������',
                                 '��˾ƥ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 59,
                                 '�����ɰ�',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 60,
                                 '�������',
                                 '������ȡ��',
                                 '�Ʋ�������ȡ��������ҩ������P-gp����������������������öȣ����໥���ó̶����ٴ����塣'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 61,
                                 '��Ī����',
                                 '�������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 62,
                                 '��������',
                                 '����̹',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 63,
                                 '�����濵',
                                 '��ɳ����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 64,
                                 '�����в���',
                                 '��Ѫ��ҩ���������༰��������ҩ�˫����ҩ��ȵ����Ƽ����ȵ�����������',
                                 '������Ѫ�ǵĿ����ԣ����صشӵͼ�����ʼ��ҩ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 65,
                                 '��������',
                                 '����̫��',
                                 '�Ʋ��������ͨ������CYP3A��������������̫�����\n�����̡�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 66,
                                 '�����Ƿ�',
                                 'CYP4503A4���յ���',
                                 '����Ѫ�������Ƿ�ˮƽ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 67,
                                 '�����Ƿ�',
                                 '���࿹����ʧ��ҩ���������ᡢ�������ᡢ��ɳͪ����ŵ�',
                                 'Q-T�����ӳ������õ��ӣ�����Q-T�����ӳ��ķ������ӣ�Ӧ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 68,
                                 '�����Ƿ�',
                                 '�Ҵ�',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 69,
                                 '�����Ƿ�',
                                 '����ɴ���',
                                 '����������������ķ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 70,
                                 '�����Ƿ�',
                                 '����ມ�̹���¡�������ມ���ɳ��ີȽ������׿�ҩ',
                                 '�ɷ���֢״�Ե�Ѫѹ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 71,
                                 '�����Ƿ�',
                                 '̹������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 72,
                                 '�����Ƿ�',
                                 '��������ҩ��',
                                 '������������ҩ��Ļ��ߣ�������Ʒ�����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 73,
                                 '�����Ƿ�',
                                 'ϸ��ɫ��P4503A4���Ƽ�',
                                 '��ƷѪ��ˮƽ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 74,
                                 '�����Ƿ�',
                                 '������֭',
                                 '�����Ƿǵ��������ö����ӣ������ӳ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 75,
                                 '�����Ƿ�',
                                 '�����涡',
                                 '��ƷѪ��ˮƽ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 76,
                                 '������Τ',
                                 '������',
                                 '������澺���������л�����ڣ��ϲ��ñ������ʹ��Ʒ����й��������˥���ӳ�������ҩ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 77,
                                 '������Τ',
                                 '�����ػ�װ����ʣ����ڣ�',
                                 '�������쳣��Ӧ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 78,
                                 '������Τ',
                                 '�����涡',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 79,
                                 '������Τ',
                                 '����',
                                 '���������ԣ�����Ϊ��Ȼ�˯��ƣ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 80,
                                 '����ù��',
                                 '��ɳ������ƥĪ����',
                                 '���ߺ���ѪŨ�ȣ�����Q-T�����ӳ�������ʧ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 81,
                                 '����ù��',
                                 '��˾���򡢻����֡�������������ء�������ء������ء��������������涡������������ͤ���������ᡢ�������ס����������工����������Ī˾',
                                 '����ҩ���Ѫ��Ũ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 82,
                                 '����ù��',
                                 '����',
                                 '��Ʒ����ź��ߵ�����ʹ����̬ѪŨ���½���Ӧ������ʱ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 83,
                                 '���Ѵ�',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 84,
                                 '������',
                                 '����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 85,
                                 '������',
                                 '����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 86,
                                 '������',
                                 '����',
                                 '��-3֬�����ܽ���ѪС���ڵ�Ѫ˨��A2ˮƽ��Ӱ��ά����K��������Ѫ���ӵĻ��ԣ��������Ӣ���ˮƽ������ǿ�����ֵĿ������ԡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 87,
                                 '��������',
                                 '���',
                                 '��������ڴ�лΪ��������ϩ����ण���DPD������ؽ�϶�ʧ��������ڿ���������лΪ������ऺ�Ĵ�л���裬���·�����वĹ������ƺ�θ�������ԡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 88,
                                 '��ά����',
                                 '����ƽ�����������ȸ�ҩø�յ�ҩ',
                                 '���յ���ҩ�Ĵ�л���Ӷ�������ҩ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 89,
                                 '��ά����',
                                 '�������',
                                 '��ά��������P-gp��������ϸ���Զ�����ǵ���ҩ�ԡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 90,
                                 '��ά����',
                                 '����͡',
                                 '����͡����ѡ���Ե�Ӱ���˿�ά����Ĵ�л������û�дﵽ���ٴ�������໥����ˮƽ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 91,
                                 '��ά����',
                                 '��������',
                                 '��ҩ���׿��������صĦ�ЧӦ���Ӷ������Ĳ��컺���׿��������صĹ�����Ӧ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 92,
                                 '��ά����',
                                 '��̫��',
                                 '�ɲ������صĵ�Ѫѹ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 93,
                                 '��ά����',
                                 '�����㶹��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 94,
                                 '��ά����',
                                 'Ī���ᶨ',
                                 '���ܳ��ַ����Ը�Ѫѹ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 95,
                                 '��ά����',
                                 '�����涡',
                                 '�ܼ��ٱ�Ʒ���δ�л���ӳ��������������ѪŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 96,
                                 '��������',
                                 'CYP3 A4ǿ�յ�ҩ',
                                 '����߱�Ʒ�Ĵ�л���������ͱ�Ʒ��ѪҩŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 97,
                                 '��������',
                                 '��������',
                                 '��¶�������ѪҩŨ�ȷֱ𽵵���46%��61%��ѪҩŨ�ȴ��ʱ����˥���ޱ仯'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 98,
                                 '��������',
                                 '�̲�',
                                 '���ܻή�ͱ�Ʒ��ѪҩŨ�ȣ����������߽���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 99,
                                 'ȥ����ѹ��',
                                 '�����࿹����ҩ���ȱ�ມ�������ƽ',
                                 '�����俹�������ò�������ˮ������Σ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 100,
                                 'ȥ����ѹ��',
                                 '�������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 101,
                                 'ȥ����ѹ��',
                                 '��������',
                                 '�Ʋ���������ͨ������ǰ�����أ�����ȥ����ѹ�ص�Ѫ�ܻ��Դ����Ա���졣'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 102,
                                 'ȥ����ѹ��',
                                 '����������������͡',
                                 '����ǿ���߶Ա�ҩ�ķ�Ӧ��������Ӱ�챾ҩ���õĳ���ʱ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 103,
                                 'ȥ����ѹ��',
                                 '��ù��',
                                 '�Ʋ��ù�ؼӿ�θ���䶯������ȥ����ѹ�ص��������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 104,
                                 'ȥ����ѹ��',
                                 'ʳ��',
                                 'ʳ�����Ӱ��ȥ����ѹ�ص������ٶȺͳ̶ȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 105,
                                 '˫������',
                                 '����ͪ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 106,
                                 '˫�״�Ī',
                                 '�������',
                                 '���ܴ���ҩЧѧ����ӻ�Эͬ���á�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 107,
                                 '˫�ȷ���',
                                 '��������',
                                 '�Ʋ��������ͨ������CYP2C9������˫�ȷ�����׹�ЧӦ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 108,
                                 '˫�ȷ���',
                                 '��������ҩ',
                                 '������߼�Ѫ֢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 109,
                                 '˫�ȷ���',
                                 '�ɴ���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 110,
                                 '˫�ȷ���',
                                 '�ظ���',
                                 'ͬ��ʱ������ظ����ļ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 111,
                                 '˫�ȷ���',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 112,
                                 '˫�ȷ���',
                                 '����Ѫѹҩ',
                                 '��Ӱ�콵ѹЧ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 113,
                                 '˫�ȷ���',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 114,
                                 '˫�ȷ���',
                                 '�װ�����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 115,
                                 '˫�ȷ���',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 116,
                                 '˫�ȷ���',
                                 '��Ī����',
                                 '�Ʋ�˫�ȷ���ɴٽ���Ī���ֵ����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 117,
                                 '˫�ȷ���',
                                 '����ҩ',
                                 '��Ӱ�콵�ǵ���Ч���������ؿ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 118,
                                 '˫�ȷ���',
                                 '�����涡',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 119,
                                 '˾������',
                                 '������������ø����ҩ',
                                 '��ֹ���ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 120,
                                 '˾������',
                                 '������ƽ���¿���ƽ',
                                 '˾������ѪҩŨ���������ɵ��¸��ȡ���﷢���ȣ������ɣ����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 121,
                                 '˾������',
                                 '����ड�����ࡢ��ɳͪ���ұ����һ�����ɳ�ҡ�������ͪ',
                                 '��ֹ���ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 122,
                                 '˾������',
                                 '��������',
                                 '�������඾�ԣ�Q-T�����ӳ������Ťת�������Ķ����١�����ͣ�����ķ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 123,
                                 '˾������',
                                 '��������',
                                 '�ɳ���������ϵͳ���Ի�5-HT�ۺ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 124,
                                 '˾������',
                                 '�������ئ����弤��ҩ',
                                 '�����˷ܡ��Ķ����١�������ķ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 125,
                                 '˾������',
                                 '�����',
                                 '�׿�������वĿ���Ѫѹ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 126,
                                 '˾������',
                                 'ɫ����',
                                 '������ϵͳ���˷��������ӣ��ɳ��������5-HT�ۺ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 127,
                                 '˾������',
                                 '����������ǰ�',
                                 '�ɳ��ָ�ѪѹΣ���5-HT�ۺ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 128,
                                 '˾������',
                                 '�����',
                                 '���ɶ��ߺ��ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 129,
                                 '˾������',
                                 '�Ұ��ᡢ�׻���͡��߼���',
                                 '�ɳ��ָ�ѪѹΣ��ͷʹ���ļ¡���ǿֱ���������ɣ����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 130,
                                 '˾������',
                                 '�ƶ���/��Ȳŵ��ͪ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 131,
                                 '˾������',
                                 '��������',
                                 '�ɳ����񾭶��Ժ���﷢���������ɣ����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 132,
                                 '��������',
                                 '����ƽ',
                                 '��Ʒ��ƽ��AUC����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 133,
                                 '���Ǳ���',
                                 '��͡��',
                                 '��������Ƽ��ܽ�֢��ʹ�������ἤøѪŨ�����ߣ����򵰰�����¼���������˥��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 134,
                                 '���Ǳ���',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 135,
                                 '���Ǳ���',
                                 '�ڷ�����ҩ',
                                 '�������ӿ������ã����辭���ⶨ��Ѫøԭʱ���Ե�������ҩ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 136,
                                 '���Ǳ���',
                                 '��³˾��',
                                 '���Ǳ��뼰���л�Ｊ�Ǳ���1-O-��-������ȩ��������������³˾�صĴ�л(���־���CYP2C8)��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 137,
                                 '���Ǳ���',
                                 '�������',
                                 '���Ǳ��뼰���л������������������ξ�CYP2C8�Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 138,
                                 '���Ǳ���',
                                 '���淥��͡',
                                 '���淥��͡��OATP2( OATP1B1)�ĵ�����Ǳ�������OATP2���͸�������淥��͡��������ȡ��ͬʱ�����Ǳ��뼰���л�����ͨ������UGT���������淥��͡�Ģ����л���̡�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 139,
                                 '���Ǳ���',
                                 '�����沴',
                                 '�����沴�ķ�ѡ�����������ý��ͼ��Ǳ�����������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 140,
                                 '߻�����',
                                 '������ͱ�����ͪ',
                                 'ѪҩŨ�����ߺͣ���Ѫ���˥���ӳ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 141,
                                 '߻���',
                                 '����ҩ����̼�����ơ���������',
                                 '�������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 142,
                                 '������',
                                 '�����¡��ױ�����',
                                 '�ܴ�ʹ��������Ч����ߺ�������֯��Ũ��55%���κ�����Ũ���������½�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 143,
                                 '������͡��',
                                 'ˮ����',
                                 '���Խ��ͱ�ҩ�ĵ��׽���ʣ���ͬʱ���ø߼���ˮ����ʱ���Ƽ����ٱ�ҩ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 144,
                                 '����ƥ��',
                                 '������Ǽ�',
                                 '�Ʋ������Ǽ�ͨ������OATP-B����������ƥ�����������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 145,
                                 '����ƥ��',
                                 '�ظ���',
                                 'ʹ����ѪҩŨ������½���Լ15%������һ�㲻��Ӱ��ظ������ٴ���Ч'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 146,
                                 '����ƥ��',
                                 '������',
                                 'ż��������Ʒ�ɽ��ͻ����ص�ѪҩŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 147,
                                 '����ƥ��',
                                 '���',
                                 '��ʹ���ѪҩŨ�����߲��й�����Σ�գ����ñ�Ʒ�ڼ估֮��Ӧ���������������Ҫʱ���в��ѪҩŨ�ȼ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 148,
                                 '����ƥ��',
                                 'ѪС��ۼ�����ҩ����˨ҩ�����µ���ѪøԭѪ֢��ѪС����ٵ�ҩ��',
                                 '���ɼ��س�Ѫ��Σ�ա����ٴ�ȷ�б�Ҫ������ҩ��Ӧ���й۲첢����ʵ���Ҽ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 149,
                                 '����ƥ��',
                                 '�����ǰ�',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 150,
                                 '����ƥ��',
                                 '������ȡ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 151,
                                 'ʥԼ������ȡ��',
                                 '����Ī˾',
                                 'ʥԼ������ȡ��ͨ���յ�CYP3A�ͣ���P-gp���ӿ�����Ī˾�Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 152,
                                 'ʥԼ������ȡ��',
                                 '�������',
                                 '������������ڲ�����л��P-gp̽����ʥԼ������ȡ���յ�������P-gp����������������������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 153,
                                 'ʥԼ������ȡ��',
                                 '�����濵',
                                 'ʥԼ������ȡ���յ�CYP3A4,�ӿ������濵�����л��SN-38�Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 154,
                                 'ʥԼ������ȡ��',
                                 '��������',
                                 '�����������ھ�CYP3A4��л��ʥԼ������ȡ���յ��ͼӿ���������Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 155,
                                 'ʥԼ������ȡ��',
                                 '������',
                                 '�����ֵĴ�л������ӣ���ͨ��CYP2C9(S-������)��CYP2C19(R-������)��CYP1A2(R-������)��CYP3A4��л��ʥԼ������ȡ��ͨ���յ�CYP3A4������Ӱ�컪���ֵĴ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 156,
                                 'ʥԼ������ȡ��',
                                 '�ڷ�����ҩ',
                                 '�Ʋ�ʥԼ������ȡ��ͨ���յ�CYP3A���ӿ�ڷ�����ҩ�Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 157,
                                 'ʥԼ������ȡ��',
                                 '�ظ���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 158,
                                 'ʥԼ������ȡ��',
                                 '�����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 159,
                                 'ʥԼ������ȡ��',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 160,
                                 'ʥԼ������ȡ��',
                                 '������',
                                 'ʥԼ������ȡ���еĹ�Ҷ��˿�����յ�CYP3A4�ͣ���P-gp���ӿ컷���صĴ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 161,
                                 'ʥԼ������ȡ��',
                                 '�������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 162,
                                 'ʥԼ������ȡ��',
                                 '����ø���Ƽ�',
                                 'ʥԼ������ȡ����ܻή�͵���ø���Ƽ���ѪҩŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 163,
                                 '��������',
                                 '������ƽ',
                                 '���Ʊ�Ʒ��л���������ߣ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 164,
                                 '��������',
                                 '���',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 165,
                                 '��������',
                                 '�η���ͪ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 166,
                                 '��������',
                                 '������͡',
                                 '������ͨ͡������CYP2D6�������������������Ĵ�л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 167,
                                 '��������',
                                 '�������',
                                 '���Ʊ�Ʒ��л���������ߣ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 168,
                                 '��������',
                                 '�����',
                                 '���ɺ��ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 169,
                                 '��������',
                                 '���ǿ���',
                                 '�����о���ʾ���ǿ�����CYP2D6ǿ���Ƽ�, �����������������Ĵ�л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 170,
                                 '̹������',
                                 '���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 171,
                                 '��������',
                                 '�Ҵ�',
                                 '���˺���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 172,
                                 '��������',
                                 '˫����',
                                 '���˺���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 173,
                                 '����˾��',
                                 '������Ѫ��ƶѪ���ʵ�ҩ��',
                                 '������Ѫ��ƶѪ������Σ���Դ�����ߣ������ҩ�����ʱ����ϸ�۲죬һ�������쳣֢״��Ӧ����ͣҩ����ȡ�ʵ���ʩ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 174,
                                 '������',
                                 '��ø',
                                 '���������������ư��װ�����Ч'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 175,
                                 '������',
                                 '����',
                                 'Ӧ�ʵ���������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 176,
                                 '������',
                                 '���굨��',
                                 '��ʹ������ͣ�ӳ����ڽ������������ƵĻ��ߣ�Ӧ�����굨��ǰ����ⶨѪ�е�����øˮƽ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 177,
                                 '��������',
                                 'CYP2C9���Ƽ�',
                                 '���߱�ƷѪҩŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 178,
                                 '��������',
                                 '�������׿�ҩ��������ҩ',
                                 '��������Щҩ��ѪҩŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 179,
                                 '��������',
                                 '������',
                                 '�Ʋ���������������CYP2C9�������˻����ֵĴ�л���������ڴ���CYP2C9�����̬�ԣ�S-�����ֵĴ�ν+��CYP2C9����л�͵�Ӱ��̶ȸ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 180,
                                 '��������',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 181,
                                 '��������',
                                 '��������',
                                 '�������׺������������ܴ��ھ���CYP2C9��л�����³�Ѫ���ա�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 182,
                                 '��������',
                                 '�������',
                                 '�Ʋ�������������CYP2D6����������������Ĵ�л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 183,
                                 '��������',
                                 '����Ӣ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 184,
                                 '��������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 185,
                                 '����˾��',
                                 'ʳ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 186,
                                 '��ɳ���',
                                 '�������׿�ҩ������ҩ��ACEI����ͨ������ҩ',
                                 '��ѹ������ǿ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 187,
                                 '��ɳ���',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 188,
                                 '��ɳ���',
                                 '�������������������忹��ҩ',
                                 '������ѹ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 189,
                                 '��ɳ���',
                                 '�⽻�а���',
                                 '�뱾Ʒ���ÿ�ʹǰ����ѹ�����뱾Ʒ��ѹ���þ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 190,
                                 '��ɳ���',
                                 '������ƽ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 191,
                                 '��ɳ���',
                                 '�����涡',
                                 '������Ӷ�ɳ���ѪҩŨ�ȺͰ�˥�ڣ������ٴ����岻��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 192,
                                 '��ɳ���',
                                 '�Ƽ���',
                                 '�뱾Ʒ����ʱ������Һ����������Ѫѹ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 193,
                                 '��ɳ���',
                                 '�����۰�',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 194,
                                 '������ͪ',
                                 'H2�����׿�ҩ',
                                 '���ٶ�����ͪ��θ����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 195,
                                 '������ͪ',
                                 '�����������ӡ��������֡�������͡��Ļ��ص�',
                                 '����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 196,
                                 '������ͪ',
                                 '����ҩ������θ����ڵ�ҩ��',
                                 '�ɽ��ͱ�Ʒ���������öȣ������뱾Ʒͬ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 197,
                                 '������ͪ',
                                 '����ͤ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 198,
                                 '������ͪ',
                                 '�׵�ƽ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 199,
                                 '������ͪ',
                                 'ͪ����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 200,
                                 '������̹',
                                 '����5 - HTID���弤����',
                                 '�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 201,
                                 '����������',
                                 '�㶹��',
                                 '���ӿ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 202,
                                 'ͷ�߱�ϩ',
                                 '߻���ס��������ᡢ���������ǿ����ҩ�������桢�����ǵȿ�����ҩ�����������࿹����',
                                 '���������������ԵĿ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 203,
                                 '����˾��',
                                 '������',
                                 '����˾������ͨ�����ٻ����ص����ն�����ѪҩŨ�Ƚ��͡�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 204,
                                 '�¿���ƽ',
                                 '��Ī���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 205,
                                 '�¿���ƽ',
                                 'Ƥ�ʴ�',
                                 '�¿���ƽͨ���յ�CYP3A4���ӿ�����Դ��Ƥ�ʴ��Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 206,
                                 '�µ�ƽ',
                                 'CYPIA2����ҩ',
                                 '�����������Ʊ�Ʒ��л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 207,
                                 '�µ�ƽ',
                                 '����������������ϵͳ��ҩ�Ｐ�Ҵ�',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 208,
                                 '�µ�ƽ',
                                 '������ƽ',
                                 '�����ӱ�ҩ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 209,
                                 '�µ�ƽ',
                                 '������Q-T�����ӳ���ҩ��',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 210,
                                 '�µ�ƽ',
                                 '����͡',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 211,
                                 '������������',
                                 '������',
                                 '�Ʋ������ͨ�����ƶ����������ӵ�������ȩ���ϼ������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 212,
                                 '������������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 213,
                                 '������������',
                                 '������ƽ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 214,
                                 '������������',
                                 '˫�ȷ���',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 215,
                                 '������������',
                                 '���',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 216,
                                 '������������',
                                 '�����涡',
                                 '�����涡����ͨ�����ƶ����������ӵ�������ȩ����, ���Ӱ����ҩ��ѧ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 217,
                                 '������������',
                                 '�ͱ����ࣨ�籽�ͱ��ף���⾷ҩ������ѣ�',
                                 'Ӧ�ðͱ����ࣨ�籽�ͱ��ף���⾷ҩ������ѣ��Ļ��ߣ�����Ӧ�ñ�Ʒ���¸��𺦡�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 218,
                                 '������������',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 219,
                                 '������������',
                                 '������',
                                 '�������յ�CYP2E1�ӿ�����������ӵĴ�л, ���¶��Դ�л�����߶������ζ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 220,
                                 '������������',
                                 '����ҩ',
                                 '��������Ӧ�ñ�Ʒʱ������ҩ������Ӧ������Ѫøԭʱ����е���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 221,
                                 '������������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 222,
                                 '������������',
                                 '�����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 223,
                                 '������������',
                                 '����ɳ̹',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 224,
                                 '������������',
                                 '��ù��',
                                 '���ӳ����ߵ������˥�ڣ���ǿ�䶾��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 225,
                                 '������������',
                                 '����ɳ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 226,
                                 '������������',
                                 '�޷�����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 227,
                                 '������������',
                                 '�����㶹��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 228,
                                 '������������',
                                 '����Ӣ',
                                 '�Ʋⱽ��Ӣ�յ��˶����������ӵĴ�л, �����и��඾�ԵĴ�л���ڶ�ʱ��ﵽ��Ũ�ȶ����ظ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 229,
                                 '������������',
                                 'ͪ����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 230,
                                 '������������',
                                 '��˾ƥ�֡�����ˮ�������Ƽ��������������࿹��ҩ',
                                 '�������������ԣ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 231,
                                 '������������',
                                 '����',
                                 '���Ӷ��ԣ����Ӧ����ͬʱӦ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 232,
                                 '�԰���ˮ������',
                                 '�����桢������ͪ',
                                 '���±�Ʒ��ѪҩŨ�����ߺͳ���ʱ���ӳ������Է�Ӧ����������Ӧ���ʵ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 233,
                                 '�԰���ˮ������',
                                 '�������̰�',
                                 '���Ӳ�����Ӧ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 234,
                                 '�԰���ˮ������',
                                 '����ƽ',
                                 '��������ƽ��ѪҩŨ�Ƚ��ͣ��ڷ���������ҩʱ���������6Сʱ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 235,
                                 '�԰���ˮ������',
                                 '����ҩ���㶹�ػ�������ͪ�����',
                                 '��ǿ����ҩ���㶹�ػ�������ͪ�����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 236,
                                 '�԰���ˮ������',
                                 'ά����B12',
                                 '���ð���ˮ������Ļ�����ά����B12����Ҫ����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 237,
                                 '���ù��',
                                 '߻���ס���ù��',
                                 '���Ӷ����ԣ����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 238,
                                 '���ù��',
                                 '������B',
                                 '���Ӷ����ԡ������ԡ��񾭼����������ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 239,
                                 '���ù��',
                                 'ͷ�߾�����',
                                 '���������ԣ����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 240,
                                 '���ù��',
                                 '��������',
                                 '��������������������й'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 241,
                                 '���ù��',
                                 '̼�����Ƶ���ҩ',
                                 '���������ԣ����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 242,
                                 '���ù��',
                                 '��������',
                                 '��Ϻ�Ʒ�ֽ⣨���أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 243,
                                 '���ù��',
                                 '����ҩ��������',
                                 '�����񾭼����������ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 244,
                                 '������ƽ',
                                 '�������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 245,
                                 '���޲���',
                                 '����ҩ',
                                 '�ܼ�ǿ����ҩ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 246,
                                 '���޲���',
                                 '�㶹����ҩ��',
                                 '��ǿ����Ѫ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 247,
                                 '�������',
                                 '���ﰢ��ˮ����',
                                 '�Ʋⶫ�ﰢ��ˮ�������������������ա�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 248,
                                 '�������',
                                 '���ֶ�',
                                 '����ֶ�ͬ�ö���ͣҩʱ������ͣ�ñ�Ʒ����������𲽼�ͣ���ֶ�������Ѫѹ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 249,
                                 '�������',
                                 '�ض���?',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 250,
                                 '�������',
                                 '������֡����࿨��',
                                 '��Ʒͬ��ʹ��Ʒ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 251,
                                 '�������',
                                 '������������',
                                 '�����������������С������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 252,
                                 '�������',
                                 '�ȱ��',
                                 '��ʹ���ߵ�ѪҩŨ�Ⱦ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 253,
                                 '�������',
                                 '�������ء������涡�����ֶ����ȵ���',
                                 '���ɺ��ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 254,
                                 '�������',
                                 '�����涡',
                                 '�ܼ��ٱ�Ʒ���δ�л���ӳ��������������ѪŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 255,
                                 '�������',
                                 '��ͨ�����ͼ�',
                                 '�ر��Ǿ�������ά�����ף�Ҫʮ�־�����ļ��ͷ��Ҵ��������ƣ�����������ļ�������˥���½��ļ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 256,
                                 '�������',
                                 '�������࿹��ҩ',
                                 '���Լ�����Ʒ�Ľ�ѹ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 257,
                                 '����ͪ',
                                 '5 - HT���񾭹��ܵ�ҩ��',
                                 '������5 - HT�ۺ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 258,
                                 '����ͪ',
                                 'CYP3 A4����ҩ',
                                 '����ͪѪҩŨ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 259,
                                 '����ͪ',
                                 '�Ҵ�����������ҩ',
                                 '����ǿ�Ҵ�����������ҩ��������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 260,
                                 '����ͪ',
                                 '������Τ',
                                 '������Τͨ������CYP3A4��������������ͪ�Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 261,
                                 '����ͪ',
                                 '��������ø����ҩ',
                                 '���ܻᵼ�����ز�����Ӧ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 262,
                                 '����ͪ',
                                 '������ƽ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 263,
                                 '����ͪ',
                                 '������࿹����ҩ',
                                 '��ѹ���õ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 264,
                                 '����ͪ',
                                 '����͡',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 265,
                                 '��������',
                                 '�ٽ������ط��ڵ�ҩ��',
                                 '���±�ҩ�����ý���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 266,
                                 '��������',
                                 'ά������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 267,
                                 '���Ჴ��',
                                 '�ױ��Ƕ��塢ˮ�����ơ��ǰ��������',
                                 '��������ҩ�����ӣ�����ҩ�����úͶ��Է�Ӧ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 268,
                                 '������ͪ',
                                 'H2�����׿���',
                                 '�����ܹ������Ч'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 269,
                                 '������',
                                 '������',
                                 '��ǿ���ǵ����ã�������Ѫøԭʱ���ӳ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 270,
                                 '��������',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 271,
                                 '����ɳ��',
                                 '��������',
                                 '�Ʋ����ɳ�������������ֵĴ�л������ȥ�����ֵ�Ѫ\n��Ũ�Ƚ��͡�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 272,
                                 '������',
                                 '����̫��',
                                 '������ͨ������CYP3A����������̫��Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 273,
                                 '�������',
                                 '�װ�����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 274,
                                 '���������',
                                 '����ɳ�ǡ�ŵ��ɳ�ǡ�����ɳ��',
                                 '���³鴤�����Ŀ��ܣ���ֹ���ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 275,
                                 '�������',
                                 '���ǰ���',
                                 'ͨ������������Ʒ�Ŀ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 276,
                                 '��좱���',
                                 'ʳ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 277,
                                 '��������',
                                 '�Ļ�����',
                                 '�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 278,
                                 '��������',
                                 '�ظ����������֡�˫�㶹�ء����������ᶡ���ȱ�ມ�������������������������¡�ά���ؼ��ͱ�����',
                                 'ʹ��Щҩ�����Ч�ܵ�Ӱ�죬Ӧ��������ͬʱʹ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 279,
                                 '��������',
                                 '���ᶡ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 280,
                                 '��������',
                                 '�������',
                                 '����������������ӿ���ҩ���������ա�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 281,
                                 '��������',
                                 '�������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 282,
                                 '��������',
                                 'ţ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 283,
                                 '��������',
                                 '����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 284,
                                 '��������',
                                 '�����涡�������涡',
                                 '��ʹ�������ռ��٣�һ�㲻�ᳫ��ҩ��lСʱ��ͬ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 285,
                                 '��������/������þ',
                                 '��������',
                                 '��������/������þ�����Ƽ�������Ӱ������������������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 286,
                                 '��������/������þ',
                                 '������Τ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 287,
                                 '��������/������þ',
                                 '����ɳ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 288,
                                 '��������/������þ',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 289,
                                 '��������/������þ',
                                 '˾��ɳ��',
                                 '����������������þ�����Ƽ��ɽ���˾��ɳ�ǵ��������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 290,
                                 '��������/������þ',
                                 '����ɳ��',
                                 '����������������þ�����Ƽ��ɽ��ͼ���ɳ�ǵ��������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 291,
                                 '��������/������þ',
                                 '߻ɽ��Τ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 292,
                                 '��������/������þ',
                                 'ͷ�߲�ϩ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 293,
                                 '��������/������þ',
                                 'ͷ�߲��',
                                 '����������������þ����Ƽ���������ͷ�߲�뿵��������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 294,
                                 '��������/������þ',
                                 '���״����',
                                 '�����о���ʾ��������/������þ�ɼ��������Եؼ������״���ص����ա�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 295,
                                 '��������/������þ',
                                 '�������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 296,
                                 '��������/������þ',
                                 '���淥��͡',
                                 '����������������þ����Ƽ��������������淥��͡���������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 297,
                                 '��������/������þ',
                                 '�������',
                                 'ͬʱ������������/������þ�����Ƽ��ɽ��Ϳڷ�����������������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 298,
                                 '��������/������þ',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 299,
                                 '��������/������þ',
                                 '����Ӣ',
                                 '��������/������þ�����Ƽ��ɽ��ͱ���Ӣ���������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 300,
                                 '��������/������þ',
                                 '����˾��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 301,
                                 '��������/������þ',
                                 '����ù��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 302,
                                 '��������/������þ',
                                 '������ͪ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 303,
                                 '������þ/��������',
                                 '������ͪ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 304,
                                 '�������',
                                 'B�������������׿�ҩ',
                                 '��ʹ������Ѫ֬��Ѫ�����Ѫ�ǵ�������ǿ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 305,
                                 '�������',
                                 '���������顢�������ࡢ�����ᡢ�����ɳ�ࡢ���������ͪɫ��',
                                 '��Ʒ�������ͼػ��þѪ֢���Ӷ����շ���������ʧ����Q-T�����ӳ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 306,
                                 '�������',
                                 '������Ʒ',
                                 '��ת��Ϊ��ȩ�����ƣ���Ч�½�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 307,
                                 '�������',
                                 '�����',
                                 '��ʹѪ������������ǿ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 308,
                                 '�������',
                                 '���Ѵ�',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 309,
                                 '�������',
                                 '������ƽ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 310,
                                 '�������',
                                 '˫�ȷ���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 311,
                                 '�������',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 312,
                                 '�������',
                                 '�������ҩ��',
                                 '�ɵ������صĵ�Ѫѹ���ݿ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 313,
                                 '�������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 314,
                                 '�������',
                                 '߻����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 315,
                                 '�������',
                                 '�ض���?',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 316,
                                 '�������',
                                 '��Ͱ�',
                                 '�������ü�ǿ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 317,
                                 '�������',
                                 '����ɳ̹',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 318,
                                 '�������',
                                 '������������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 319,
                                 '�������',
                                 '�ͱ�����ҩ',
                                 '�ɵ���ֱ���Ե�Ѫѹ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 320,
                                 '�������',
                                 '�����',
                                 '�ƲⲼ��ҵ�NSAIDsͨ��ˮ������Ӱ��������ີĽ�ѹ���á�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 321,
                                 '�������',
                                 '�з���̹',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 322,
                                 '�������',
                                 '����ҩ',
                                 'ʹ����ҩ���ü���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 323,
                                 '�������',
                                 '��ʹ��ҩ',
                                 '��ʹ��ҩӦ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 324,
                                 '�������',
                                 '�⽻�а���ҩ',
                                 '�������ü���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 325,
                                 '�������',
                                 '�������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 326,
                                 '�������',
                                 '�Ȼ���',
                                 '���������Ȼ�����Һ�ɵ�����ҩ�Ľ�ѹ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 327,
                                 '�������',
                                 '��ػ���ҩ�����ͪ��',
                                 '�뱾ҩ����ʱ��Ӧ������ͼ�Ѫ֢����ĸ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 328,
                                 '�������',
                                 '�����̫��',
                                 '���������ӱ�ҩ��θ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 329,
                                 '�������',
                                 '���������������������ҩ��',
                                 '�������ü���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 330,
                                 '�������',
                                 '�������',
                                 '�׷�������Ѫ֢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 331,
                                 '�������',
                                 '̼������',
                                 '���������Լ��ж���������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 332,
                                 '�������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 333,
                                 '�������',
                                 'ά����D',
                                 '��ע���Ѫ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 334,
                                 '�������',
                                 '��ɳ̹',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 335,
                                 '�������',
                                 '�Ƕ�����',
                                 '���農������ҩ�Ƕ����ƿ������صͼ�Ѫ֢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 336,
                                 '�������',
                                 '������Ƥ�ʼ��ء���������Ƥ�ʼ��ء��Ƽ��ء�����ù��B��������ҩ��',
                                 '�ܽ��ͱ�ҩ���������ã����ӷ�����������ҵĻ��ᣬ�����ǵͼ�Ѫ֢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 337,
                                 '�������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 338,
                                 '�������',
                                 '����鰷',
                                 '�ɲ���������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 339,
                                 '�������',
                                 '��Ƽ�',
                                 '��ҩ�ɼ��������﮵����������﮵�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 340,
                                 '�������',
                                 '��˾ƥ��',
                                 '������������ʹ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 341,
                                 '�������',
                                 '�������',
                                 '��Эͬ��ѹ�����⣬��������Ч�����ڵ��ð������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 342,
                                 '�������',
                                 '��ѹҩ',
                                 '����ѹ���þ���ǿ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 343,
                                 '�������',
                                 '����ҩ',
                                 '���ͽ���ҩ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 344,
                                 '�������',
                                 '��ȥ��������ҩ',
                                 '��ǿ��ȥ��������ҩ�����ã���Ѫ���½��й�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 345,
                                 '�������',
                                 '�������࿹����ʹҩ����������������',
                                 '�ܽ��ͱ�ҩ���������ã���ǰ������ǰ�����غϳ��й�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 346,
                                 'ˮ�ɼ���',
                                 '������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 347,
                                 'ɳ������',
                                 '���������������弤��ҩ',
                                 '�����ÿ����ӣ�������ӦҲ���ܼ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 348,
                                 'ɳ������',
                                 '��������ø���Ƽ��������࿹����ҩ',
                                 '����ͬʱʹ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 349,
                                 'ɳ������',
                                 '��˹����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 350,
                                 'ɳ������',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 351,
                                 'ɳ������',
                                 '�������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 352,
                                 'ɳ������',
                                 '������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 353,
                                 'ɳ������',
                                 'ά�����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 354,
                                 'ɳ������',
                                 '�޷�˾��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 355,
                                 'ɳ������',
                                 '�����ҩ',
                                 '����������֧����ƽ�������ã���������ӦҲ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 356,
                                 'ɳ������',
                                 '����˾��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 357,
                                 'ɳ������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 358,
                                 'ɳ������',
                                 'ʳ��',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 359,
                                 'ɳ����͡',
                                 '����˫��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 360,
                                 'ɳ����͡',
                                 '����ƽ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 361,
                                 'ɳ����͡',
                                 '������ͪ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 362,
                                 'ɳ����͡',
                                 '�ض���?',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 363,
                                 'ɳ����͡',
                                 '���б���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 364,
                                 'ɳ����͡',
                                 '������͡',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 365,
                                 'ɳ����͡',
                                 'ͪ����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 366,
                                 'ɳ����͡',
                                 'ʳ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 367,
                                 'ɳ������',
                                 '�����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 368,
                                 'ɳ������',
                                 '���濨��',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 369,
                                 'ɳ������',
                                 'ɳ������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 370,
                                 'ɳ��',
                                 'ʳ��',
                                 'ʳ����ܽ���ɳ�����������öȣ����Ʋ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 371,
                                 '��Ī�涡',
                                 '��������ͪ����',
                                 '�ɽ��ͺ��ߵ�ҩЧ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 372,
                                 '��Ī�涡',
                                 '�̲�',
                                 '�ɽ��ͷ�Ī�涡����Ч'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 373,
                                 '��Ī�涡',
                                 '������ƽ',
                                 '����ת������ƽ�����Լ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 374,
                                 '�������',
                                 '��Ӱ�ϰ�',
                                 '��Ӱ�ϰ�����Ӱ�����������Ѫ���������̿������1�����޹أ����������າ���Ԥ����Ӱ�ϰ�����ļ�����˥�ߡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 375,
                                 '�ر�����',
                                 '����̫��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 376,
                                 '������',
                                 '˾ά��ķ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 377,
                                 '������',
                                 '�����󿼷���',
                                 '�������������󿼷��ἰ��������ȩ������ĳ���ѭ�����������󿼷����ѪҩŨ�ȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 378,
                                 '������',
                                 'С�޼�',
                                 'С�޼����ͨ������CYP3A4��Ҳ�������ӳ���θ�ſ�ʱ��������˻����ص��������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 379,
                                 '������',
                                 'Ī��ɳ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 380,
                                 '������',
                                 '���ǿ���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 381,
                                 '������',
                                 'ͪ����',
                                 'ͪ������Ҫͨ��������θ������CYP3A������˻����ص��������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 382,
                                 '��������',
                                 '�����ʴ�����ˮ�ɼ�������',
                                 'Ӧ������Щ��ʹ��ҩ��ļ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 383,
                                 '��������',
                                 '������ͱ����ࡢƤ�ʼ�����ҩ��',
                                 '��Ӱ�컷�������Ĵ�л��ͬʱӦ�ÿ����Ӽ��Զ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 384,
                                 '���ŵ��',
                                 '�����',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 385,
                                 '�������',
                                 '��������',
                                 '��������ͨ������CYP3A4��CYP2C8�������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 386,
                                 '�������',
                                 '����ù��',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 387,
                                 '�������',
                                 '����ƽ',
                                 '����ƽ�յ�CYP2C8��CYP3A4�ɼӿ�������εĴ�л�������併Ѫ�����á�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 388,
                                 '�������',
                                 '��������ø���Ƽ�( MAOI)����ѡ����B�����׿�����ACE���Ƽ��������忹��ҩ��ˮ�����Σ������ģ��Ҵ��Լ��ٺϳɴ�л�ļ���',
                                 '��ǿ������εĽ�Ѫ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 389,
                                 '�������',
                                 '�ڷ�����ҩ�������ҩ��Ƥ�ʼ��أ������򣬼�״�ټ��غ��⽻����ҩ',
                                 '�ɼ����������Ƭ�Ľ�Ѫ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 390,
                                 '�������',
                                 '�ظ���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 391,
                                 '�������',
                                 '��³˾��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 392,
                                 '�������',
                                 '����ù��',
                                 '����ù��ͨ������CYP3A4������������εĴ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 393,
                                 '�������',
                                 '������',
                                 '������ξ�CYP3A4��л��ͬʱ����OATPIB1�����������CYP3A4��OATPIB1�����Ƽ���������������εĴ�л�����ٸ����������ε�������ȡ��\n'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 394,
                                 '�������',
                                 '�������',
                                 '���������CYP2C8���е�ǿ�����Ƽ����������������\n�Ĵ�л��\n'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 395,
                                 '�������',
                                 '�ǰ��׶���/�������',
                                 '�Ʋ�������ͨ������CYP2C8������������εĴ�л�����������ܲ�ȫ���¼�����व������������һ����ҩ���໥���õĳ̶ȡ�\n'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 396,
                                 '�������',
                                 '���ͻ�����',
                                 '��Ӱ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 397,
                                 '�������',
                                 '�����涡',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 398,
                                 '�������',
                                 '��ŵ����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 399,
                                 '����͡',
                                 '��������ø���Ƽ������ȱ���������������',
                                 'ͣ�õ�������ø����ҩδ����2���ߣ��಻��ʹ�ñ�Ʒ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 400,
                                 '����͡',
                                 '����ɳ��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 401,
                                 '����͡',
                                 '������ʧ��ҩ����������������������������',
                                 'Эͬ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 402,
                                 '����͡',
                                 '�ż�����ҩ',
                                 '��������߼�Ѫ֢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 403,
                                 '����͡',
                                 '������',
                                 'Эͬ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 404,
                                 '����͡',
                                 '��ù��',
                                 'Эͬ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 405,
                                 '����͡',
                                 '������CYP3 A4���Ե�ҩ��',
                                 '�������ӱ�Ʒ��ѪҩŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 406,
                                 '����͡',
                                 'ѡ����5-��ɫ�����������Ƽ�',
                                 'Эͬ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 407,
                                 '����͡',
                                 '�����������',
                                 '��������Ѫѹ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 408,
                                 '���淥��͡',
                                 '����Ī˾',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 409,
                                 '���淥��͡',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 410,
                                 '���淥��͡',
                                 '����ƽ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 411,
                                 '���淥��͡',
                                 '������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 412,
                                 '���淥��͡',
                                 '�ڷ�����ҩ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 413,
                                 '���淥��͡',
                                 '�ظ���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 414,
                                 '���淥��͡',
                                 '������Τ/������Τ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 415,
                                 '���淥��͡',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 416,
                                 '���淥��͡',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 417,
                                 '���淥��͡',
                                 '������þ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 418,
                                 '���淥��͡',
                                 '������',
                                 '���淥��͡��OATP2�ĵ����������������OATP2[IC50=(2.2��0.4) mmol/L]��������������淥��͡��������ȡ��Ũ�����á�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 419,
                                 '���淥��͡',
                                 '��ù��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 420,
                                 '���淥��͡',
                                 '�����Ƿ�',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 421,
                                 '���淥��͡',
                                 '��ŵ����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 422,
                                 '���淥��͡��',
                                 '������',
                                 '�������ӻ����ֵ�ѪҩŨ�ȣ���������INR��ֵ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 423,
                                 '���淥��͡��',
                                 '���Ǳ���',
                                 '��ʹ���Ǳ����ѪҩŨ������120%'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 424,
                                 '���淥��͡��',
                                 '�ظ���',
                                 '�Եظ���ѪҩŨ��������Ӱ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 425,
                                 '���淥��͡��',
                                 '������',
                                 '����Ӱ�컷���ص����ã�����ʹ��ҩ��ѪҩŨ������7-111��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 426,
                                 '���淥��͡��',
                                 '����ҩ',
                                 '��ҩ�����ӱ���ҩ��ѪҩŨ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 427,
                                 '���̫��',
                                 '��������ø���Ƽ�',
                                 '��ֹ���ã����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 428,
                                 '���̫��',
                                 '�����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 429,
                                 '���̫��',
                                 'Ѫ�塢Ѫ����ѪҺ��Ʒ',
                                 '��ֹͬһ·����ҩ�����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 430,
                                 '������',
                                 '�Ҵ�+˫����',
                                 '˫��������Ӧ�������Ҵ���л����ȩ����ø�����ƶ�������ȩ�ۼ������������Ҵ�����ø���Ƽ������������Ҵ���лΪ��ȩ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 431,
                                 '�������հ�',
                                 '���������ӡ�������͡�﮻���Ļ��ء��������֡��Ҵ��͵�������',
                                 'ʹ������С������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 432,
                                 '�������հ�',
                                 '��������̹',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 433,
                                 '�������հ�',
                                 '�����������ӡ��Ļ��ء�������͡��Ҵ���������',
                                 '����������С���ڵ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 434,
                                 '�������հ�',
                                 '��������ҩ�������ֹʹҩ',
                                 '�׿�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 435,
                                 '�������հ�',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 436,
                                 '�������հ�',
                                 '�������հ�',
                                 '��θ�������ܶ���Ч�ܿɱ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 437,
                                 '�������ϰ�',
                                 '�������ມ����ᱽ���������������ȱ�������',
                                 '�ɷ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 438,
                                 '�⻯��',
                                 '131I',
                                 '�����ټ�״����֯��131I����ȡ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 439,
                                 '�⻯��',
                                 '131 I',
                                 '�����ټ�״����֯��131I����ȡ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 440,
                                 '�⻯��',
                                 'Ѫ�ܽ�����ת��ø���Ƽ��򱣼������',
                                 '���¸߼�Ѫ֢��Ӧ���Ѫ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 441,
                                 '�⻯��',
                                 '���',
                                 '���������״�ٹ��ܼ��˺ͼ�״���״�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 442,
                                 '��������',
                                 '�����࿹����ҩ',
                                 '��ǿ�����࿹����ҩ������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 443,
                                 '��������',
                                 '������',
                                 '��ǿ�������Ŀ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 444,
                                 '��������',
                                 '�ȵ��ػ�ڷ�����ҩ',
                                 '���򲡻��߷��ñ�ƷӦ�ʵ������ȵ��ػ�ڷ�����ҩ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 445,
                                 '��ȴ�',
                                 '����˫��',
                                 'ʹ��ǰ48Сʱ����ֹͣʹ�ö���˫�ң�����ֻ������ɷ���ѧ���2���������¿�ʼ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 446,
                                 '�⺣��',
                                 '�׽���-2',
                                 '�������ð׽���-2���ƵĻ������ӳٷ�Ӧ��Σ���Ի����ӣ���ð��֢״��Ƥ����Ӧ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 447,
                                 '����׶�',
                                 '����ҩ��',
                                 '��Ʒ�ڼ�����Һ���׷ֽ⣬�������ҩ�����飨���أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 448,
                                 '̼���',
                                 '����ҩ��',
                                 'Ӧע������ʧ���ķ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 449,
                                 '̼���',
                                 '�����Ŀ���ҩ',
                                 '������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 450,
                                 '̼���',
                                 '��˾��Τ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 451,
                                 '̼���',
                                 '��131',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 452,
                                 '��Ī˾͡',
                                 '�￨���',
                                 '��Ʒ�������Ĵ￨��຺��ó��ַβ����Ա��֣����˺��������ۺ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 453,
                                 '����������',
                                 '�������ҩ����������������ड���������',
                                 '������Ѫ�ع���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 454,
                                 '��ˮ�ɼ�',
                                 '������Τ',
                                 '�Ʋ�������Τ����P-gp��������ˮ�ɼ����й�������䱩¶����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 455,
                                 '��ˮ�ɼ�',
                                 '���Ǳ���',
                                 '��ˮ�ɼ�ͼ��Ǳ��붼�е��¼����Ĳ�����Ӧ������������Σ���ԡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 456,
                                 '��ˮ�ɼ�',
                                 '�ض���?',
                                 '�Ʋ�ض���?����P-gp��������ˮ�ɼ����й�������䱩¶����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 457,
                                 '��ˮ�ɼ�',
                                 '�շ���͡',
                                 '���ߵ��໥���ÿ�����P-gp��أ�ͬʱ���������ܲ�ȫҲ�ǵ��¼�������Ҫ���ء�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 458,
                                 '��ˮ�ɼ�',
                                 '������',
                                 '�Ʋ⻷��������P-gp��������ˮ�ɼ����й�������䱩¶����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 459,
                                 '��ˮ�ɼ�',
                                 'ά������',
                                 '�Ʋ�ά����������P-gp��������ˮ�ɼ����й�������䱩¶����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 460,
                                 '��ˮ�ɼ�',
                                 '������͡',
                                 '������͡����ˮ�ɼ��CYP3A4��л���ر�����������˥�߻�������ҩ��������ӷ���������Σ�ա�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 461,
                                 '��ˮ�ɼ�',
                                 'ͪ����',
                                 '�Ʋ�ͪ��������P-gp��������ˮ�ɼ����й�������䱩¶����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 462,
                                 '��ˮ�ɼ�',
                                 '���з���͡',
                                 '���з���͡����ˮ�ɼ��CYP3A4��л��ͬʱ��ˮ�ɼ���P-gp�����Ƽ����ɼ�����͡ҩ����׹�ЧӦ�����߰��з���͡��ѪҩŨ�ȣ����������ߺ���������ҩ������׵��¼��ⶾ�ԡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 463,
                                 '�׵�ƽ',
                                 '�',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 464,
                                 '�������',
                                 'ţ��',
                                 'ţ���ܽ�������������������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 465,
                                 '��������',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 466,
                                 '��������',
                                 '����Ī˾',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 467,
                                 '�Ƕ�����',
                                 '�ͱ����༰������ҩ��',
                                 '����׶����ϵ֢״'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 468,
                                 '�Ƕ�����',
                                 '����ҩ',
                                 '��ǿ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 469,
                                 '�Ƕ�����',
                                 '����Ʒ',
                                 '�ɼ��ٱ�Ʒ�Ը��������˷����ã���ֹ���ʼ�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 470,
                                 '�Ƕ�����',
                                 '��������ʹҩ',
                                 '�׷�����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 471,
                                 '�ǿ�ͪ',
                                 'CYP2D6���Ƽ�',
                                 '�����Ʊ�Ʒ��л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 472,
                                 '�ǿ�ͪ',
                                 '��������ҩ',
                                 '��ǿ�����������ã���Ʒ��ʼ����Ϊ����1/3��1/2'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 473,
                                 '�ǿ�ͪ',
                                 '������͡',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 474,
                                 '�ǿ�ͪ',
                                 '������͡+��������',
                                 '�Ʋ���������������������ǿ�ͪ��CYP3A�Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 475,
                                 '�ǿ�ͪ',
                                 '��ƥ��Τ/������Τ',
                                 '�Ʋ���ƥ��Τ/������Τͨ������CYP3A4�������ǿ�ͪ�Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 476,
                                 '�ǿ�ͪ',
                                 '������֭',
                                 '������֭�������ǿ�ͪ���׹�ЧӦ������ȥ���ǿ�ͪ��ȥ�������ͪ�����ɣ����������ͪ�����ɡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 477,
                                 '�ǿ�ͪ',
                                 'ͪ����',
                                 'ͪ����ͨ������CYP3A4�������ǿ�ͪ�Ĵ�лʧ���ǿ��Ч��ͬʱ�����˲�����Ӧ��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 478,
                                 '����ϩ��',
                                 '˫�ȷ���',
                                 '����ϩ������˫�ȷ�����������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 479,
                                 '����ϩ��',
                                 '�⻯�ɵ���',
                                 '����ϩ�����Ϳڷ��⻯�ɵ��ɵ��������öȣ����������ա�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 480,
                                 '����ͪ',
                                 '����ͪ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 481,
                                 '������',
                                 '5 - HT���񾭹��ܵ�ҩ��������������������֡�����ມ����������ҷ������ȣ�',
                                 '�ɵ���5 - HT�ۺ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 482,
                                 '������',
                                 'CYP2D6���Ƽ�������',
                                 '�ɲ���ҩ���໥���ã����²�����Ӧ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 483,
                                 '������',
                                 '��-3֬����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 484,
                                 '������',
                                 '�Ҵ�',
                                 '��ʹ������˶������𺦵�Σ��������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 485,
                                 '������',
                                 'ƥĪ����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 486,
                                 '������',
                                 '��������ø����ҩ',
                                 '�������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 487,
                                 '������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 488,
                                 '������',
                                 '�ױ��Ƕ���',
                                 '�Ʋ����������������CYP2C9/10����΢�����ױ��Ƕ���Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 489,
                                 '������',
                                 '��ù��',
                                 '��ù������CYP3A4�����������������ֵĴ�л������ѪҩŨ�����ߡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 490,
                                 '������',
                                 '����Ӣ��',
                                 '��Ʒ�����Ʊ���Ӣ�ƵĴ�л�����Ӻ��ߵĶ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 491,
                                 '������',
                                 '���',
                                 'ʹ���ߵ�ѪҩŨ�����ߣ����Ӳ�����Ӧ�ķ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 492,
                                 '������',
                                 '������֭',
                                 '�Ʋ�������֭���Ƴ���CYP3A4�����������ִ�лΪȥ�������֡�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 493,
                                 '������',
                                 '���',
                                 '���ܲ���ҩЧѧ���໥���ã����������Ӧ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 494,
                                 '������',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 495,
                                 '������',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 496,
                                 '��������',
                                 'CYP3 A4ǿ���Ƽ�',
                                 '���Խ��ͱ�Ʒ��л��ʹ��ѪҩŨ�����ߣ������ϲ�ʹ��ʱ��Ӧ���ǽ��ͱ�Ʒ�ļ���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 497,
                                 '��������',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 498,
                                 '������',
                                 'ACEI',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 499,
                                 '������',
                                 '������',
                                 'ͬʱ����ʱ������Ѫøԭʱ���ӳ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 500,
                                 '������',
                                 '�ױ��Ƕ���',
                                 'ͬ����ʹ�ո�Ѫ���½�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 501,
                                 '������',
                                 '��˾ƥ��',
                                 '�ɽ��ͱ�ҩ���ԣ�ʹ��Ʒ����Ч�������ͣ��ҿ��ܳ�����Χ�񾭲���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 502,
                                 '������̹',
                                 '�������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 503,
                                 '������̹',
                                 '��ǰ���',
                                 '�ɷ���Ѫ�ܾ��Ρ�Ѫѹ���ߣ�24Сʱ��ֹͬ�������أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 504,
                                 'ҩ��̿',
                                 '����Ʒ',
                                 '�ƲⰢ��Ʒ����θ�����䶯����ǿҩ��̿���������á�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 505,
                                 '�����涡',
                                 '������',
                                 '�����涡�����߿ڷ����������������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 506,
                                 '�����涡',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 507,
                                 '�����涡',
                                 '�����',
                                 '���������涡ʹ�ڷ�����ີ��������ö����ߡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 508,
                                 '�����涡',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 509,
                                 '�����涡',
                                 '����ù��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 510,
                                 '�����涡',
                                 '���࿨��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 511,
                                 '�����涡',
                                 '������',
                                 '�����涡��Ҫ����CYP3A4��CYP2D6��CYP2C19����S-��������Ҫ��CYP2C9��л��R-��������Ҫ��CYP1A2��CYP2C19��л���ʶ�R-�����ֵĴ�л��һ��Ӱ�졣'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 512,
                                 '�����涡',
                                 '������ƽ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 513,
                                 '�����涡',
                                 '���ͪ',
                                 '�����涡�����������ͪ��ѪҩŨ�ȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 514,
                                 '�����涡',
                                 '������',
                                 '�����涡��ȼ��ٿ������������ʣ��ӳ���t1/2��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 515,
                                 '�����涡',
                                 '�ظ���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 516,
                                 '�����涡',
                                 '����ƽ',
                                 '�����涡������߶���ƽ���������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 517,
                                 '�����涡',
                                 '��������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 518,
                                 '�����涡',
                                 '����',
                                 '�����涡������ȼ��������Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 519,
                                 '�����涡',
                                 '�¿���ƽ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 520,
                                 '�����涡',
                                 '��˾��Τ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 521,
                                 '�����涡',
                                 '������ͪ',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 522,
                                 '�����涡',
                                 '������������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 523,
                                 '�����涡',
                                 '��ͪ�ɿɼ�',
                                 '�����涡ͨ�����͸�����׹�ЧӦ������˼�ͪ�ɿɼ��Ѫ��Ũ�ȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 524,
                                 '�����涡',
                                 '���ȿ���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 525,
                                 '�����涡',
                                 '�����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 526,
                                 '�����涡',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 527,
                                 '�����涡',
                                 '��Ī���',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 528,
                                 '�����涡',
                                 '����˾��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 529,
                                 '�����涡',
                                 '�������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 530,
                                 '�����涡',
                                 '�ȱ��',
                                 '�����涡�������ȱ�ີĴ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 531,
                                 '�����涡',
                                 '���',
                                 '�����涡��΢������୵��������̡�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 532,
                                 '�����涡',
                                 '�ȵ�ƽ',
                                 '�Ʋ������涡ͨ������CYP450�������ȵ�ƽ�Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 533,
                                 '�����涡',
                                 '����',
                                 '�����涡����������ҵĴ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 534,
                                 '�����涡',
                                 '����ɳ��+���',
                                 '���������涡�ͻ���ɳ���������Ͳ�������ʡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 535,
                                 '�����涡',
                                 '�������հ�',
                                 '��ʹ��Ʒ��ѪҩŨ�Ƚ��ͣ���Ʒ�ļ������ʵ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 536,
                                 '�����涡',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 537,
                                 '�����涡',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 538,
                                 '�����涡',
                                 '�������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 539,
                                 '�����涡',
                                 '��������',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 540,
                                 '�����涡',
                                 '����̹',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 541,
                                 '�����涡',
                                 '��������',
                                 '�����涡�����������ؼ����л��Ĵ�л��'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 542,
                                 '�����涡',
                                 '�������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 543,
                                 '�����涡',
                                 '���з���͡',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 544,
                                 '�����涡',
                                 '��������',
                                 '�����涡�����������صĴ�л�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 545,
                                 '�����涡',
                                 '������͡',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 546,
                                 '�����涡',
                                 '�������Ƕ�',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 547,
                                 '�����',
                                 '������ϵͳ����ҩ',
                                 '����ǿ������������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 548,
                                 '�����',
                                 '�ټ�״�ټ����ͷż���',
                                 '����ʹѪ����ø�ʹ�����ˮƽ���߶�Ӱ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 549,
                                 '�����',
                                 '�Ӳ�',
                                 '����ǿ��Ʒ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 550,
                                 'ͪ���ᰱ��������',
                                 'ACE���Ƽ�',
                                 '���������������˵Ŀ����ԣ������Ƕ�Ѫ��˥�ߵĻ�������Σ���Ը���'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 551,
                                 'ͪ����',
                                 '��������',
                                 'ͪ����ͨ������CYP3A4������������������Ĵ�л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 552,
                                 'ͪ����',
                                 '��������',
                                 '�Ʋ�ͪ����ͨ������CYP3A4��������������Ĵ�л'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 553,
                                 'ͪ����',
                                 '����˾��',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 554,
                                 'ͪ����',
                                 'ɳ����Τ/������Τ',
                                 'ͪ����ͨ������CYP3A4��������ɳ����Τ�Ĵ�л������������������Τ��ͬʱͪ����ͨ������P-gp������������Τ�ıó�ЧӦ���������Լ�Һ�еĺ�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 555,
                                 'ͪ����',
                                 '�����Ƿ�',
                                 '�Ʋ�ͪ����ͨ������CYP3A4�����������ǷǵĴ�л�����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 556,
                                 'ͪ����',
                                 '���ǿ���',
                                 '�Ʋ�ͪ����ͨ�����Ƴ���������CYP3A4�����������ǿ������׹�ЧӦ���������������öȡ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 557,
                                 'ͪ����',
                                 '������ͪ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 558,
                                 'ͪ���',
                                 '���鰷ҩ��',
                                 '��һ��Эͬ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 559,
                                 '�������',
                                 '����ҩ��̼�����ơ��������༰�������ҩ�������',
                                 '�ײ��������Ӱ�����գ����ڽ��ɣ����أ�'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 560,
                                 '�����涡',
                                 '������Τ/������Τ',
                                 '����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 561,
                                 '��ù��',
                                 '������ѪҺϵͳ�в�����Ӧ��ҩ��',
                                 '���ǵĶ����������'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 562,
                                 '��ù��',
                                 '��űҩ�����Ƽ����������ǡ����򶡶��ơ���ŵ�ҵȣ����������Ƽ�����̩��',
                                 '������Ѫϵͳ������Ĳ�����Ӧ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 563,
                                 '��ù��',
                                 '�����������������ӺͿ���ҩ',
                                 '�ڷ��������ߣ���Ʒ���ڷ�����ǰ2Сʱ�ڷ������������Ʒ��Ч'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 564,
                                 '��ŵ����',
                                 'HMG - CoA��ԭø���Ƽ�',
                                 '������ʹ�����Ƽ��ܽ⡢Ѫ�������ἤø���ߵȼ���������ʱӦͣҩ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 565,
                                 '��ŵ����',
                                 '������',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 566,
                                 '��ŵ����',
                                 '�������Ƽ�',
                                 '�����е��������ܶ񻯵�Σ�գ�Ӧ������ͣҩ'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 567,
                                 '��ŵ����',
                                 '����',
                                 '���໥����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 568,
                                 '��ŵ����',
                                 '����ϩ��',
                                 '����Ӧ�ڷ�����Щҩ��֮ǰlСʱ��4��6Сʱ֮���ٷ��÷�ŵ����'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 569,
                                 '��ŵ����',
                                 '�㶹���࿹����',
                                 '��ǿ��������'
                             );


-- ��drug_introduction
DROP TABLE IF EXISTS drug_introduction;

CREATE TABLE IF NOT EXISTS drug_introduction (
    id     INTEGER       NOT NULL
                         PRIMARY KEY AUTOINCREMENT,
    name   VARCHAR (200) NOT NULL,
    drugs  VARCHAR (200) NOT NULL,
    effect VARCHAR (200) NOT NULL
);


-- ������auth_group_permissions_group_id_b120cbf9
DROP INDEX IF EXISTS auth_group_permissions_group_id_b120cbf9;

CREATE INDEX IF NOT EXISTS auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- ������auth_group_permissions_group_id_permission_id_0cd325b0_uniq
DROP INDEX IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- ������auth_group_permissions_permission_id_84c5c92e
DROP INDEX IF EXISTS auth_group_permissions_permission_id_84c5c92e;

CREATE INDEX IF NOT EXISTS auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- ������auth_permission_content_type_id_2f476e4b
DROP INDEX IF EXISTS auth_permission_content_type_id_2f476e4b;

CREATE INDEX IF NOT EXISTS auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- ������auth_permission_content_type_id_codename_01ab375a_uniq
DROP INDEX IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- ������auth_user_groups_group_id_97559544
DROP INDEX IF EXISTS auth_user_groups_group_id_97559544;

CREATE INDEX IF NOT EXISTS auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- ������auth_user_groups_user_id_6a12ed8b
DROP INDEX IF EXISTS auth_user_groups_user_id_6a12ed8b;

CREATE INDEX IF NOT EXISTS auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- ������auth_user_groups_user_id_group_id_94350c0c_uniq
DROP INDEX IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- ������auth_user_user_permissions_permission_id_1fbb5f2c
DROP INDEX IF EXISTS auth_user_user_permissions_permission_id_1fbb5f2c;

CREATE INDEX IF NOT EXISTS auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- ������auth_user_user_permissions_user_id_a95ead1b
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_a95ead1b;

CREATE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- ������auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- ������django_admin_log_content_type_id_c4bce8eb
DROP INDEX IF EXISTS django_admin_log_content_type_id_c4bce8eb;

CREATE INDEX IF NOT EXISTS django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- ������django_admin_log_user_id_c564eba6
DROP INDEX IF EXISTS django_admin_log_user_id_c564eba6;

CREATE INDEX IF NOT EXISTS django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- ������django_content_type_app_label_model_76bd3d3b_uniq
DROP INDEX IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- ������django_session_expire_date_a5c62663
DROP INDEX IF EXISTS django_session_expire_date_a5c62663;

CREATE INDEX IF NOT EXISTS django_session_expire_date_a5c62663 ON django_session (
    "expire_date"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
