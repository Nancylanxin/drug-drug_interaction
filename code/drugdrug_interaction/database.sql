--
-- SQLiteStudio v3.4.4 生成的文件，周三 11月 1 11:32:25 2023
--
-- 所用的文本编码：System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- 表：auth_group
DROP TABLE IF EXISTS auth_group;

CREATE TABLE IF NOT EXISTS auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);


-- 表：auth_group_permissions
DROP TABLE IF EXISTS auth_group_permissions;

CREATE TABLE IF NOT EXISTS auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- 表：auth_permission
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


-- 表：auth_user
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


-- 表：auth_user_groups
DROP TABLE IF EXISTS auth_user_groups;

CREATE TABLE IF NOT EXISTS auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);


-- 表：auth_user_user_permissions
DROP TABLE IF EXISTS auth_user_user_permissions;

CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- 表：django_admin_log
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


-- 表：django_content_type
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


-- 表：django_migrations
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


-- 表：django_session
DROP TABLE IF EXISTS django_session;

CREATE TABLE IF NOT EXISTS django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);


-- 表：drug_detail
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
                            '黄体酮',
                            '黄体酮是一种人工合成的孕激素，常用于妇科临床上调整周期、治疗不孕不育等情况。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            46,
                            '丁螺环酮',
                            '丁螺环酮是一种具有抗雌激素作用的药物，常用于治疗乳腺癌、子宫内膜异位症等疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            47,
                            '三唑仑',
                            '三唑仑是一种镇静催眠药，常用于治疗失眠和焦虑症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            48,
                            '三氟拉嗪',
                            '三氟拉嗪是一种抗精神病药物，常用于治疗精神分裂症和双相情感障碍。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            49,
                            '丙泊酚',
                            '丙泊酚是一种全身麻醉药物，常用于手术过程中诱导和维持麻醉状态。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            50,
                            '丙磺舒',
                            '丙磺舒是一种抗心律失常药物，常用于治疗心房颤动和心室心动过速。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            51,
                            '乳糖酸红霉素',
                            '乳糖酸红霉素是一种广谱抗生素，常用于治疗呼吸道感染、皮肤感染等细菌感染疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            52,
                            '二甲双胍',
                            '二甲双胍是一种口服降糖药物，常用于治疗2型糖尿病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            53,
                            '人参',
                            '人参是一种中草药，常用于补气养血、改善体力和抵抗力等方面。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            54,
                            '他克莫司',
                            '他克莫司是一种免疫抑制剂，常用于预防器官移植排斥反应。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            55,
                            '他利克索',
                            '他利克索是一种抗组胺药物，常用于缓解过敏症状和止咳。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            56,
                            '他喷他多',
                            '他喷他多是一种非处方镇咳药物，常用于缓解咳嗽症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            57,
                            '他拉纳班',
                            '他拉纳班是一种治疗高血压的药物，常用于降低血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            58,
                            '他林洛尔',
                            '他林洛尔是一种治疗心绞痛和高血压的药物，常用于扩张血管和降低心脏负荷。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            59,
                            '他莫昔芬',
                            '他莫昔芬是一种抗雌激素药物，常用于乳腺癌的辅助治疗。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            60,
                            '他达拉非',
                            '他达拉非是一种治疗艾滋病的抗病毒药物，常用于延缓疾病进展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            61,
                            '伊立替康',
                            '伊立替康是一种抗癫痫药物，常用于控制癫痫发作。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            62,
                            '伏格列波糖',
                            '伏格列波糖是一种口服降糖药物，常用于治疗2型糖尿病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            63,
                            '伏立康唑',
                            '伏立康唑是一种广谱抗真菌药物，常用于治疗念珠菌感染等真菌感染疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            64,
                            '伐地那非',
                            '伐地那非是一种治疗男性勃起功能障碍的药物，常用于改善勃起功能。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            65,
                            '伐昔洛韦',
                            '伐昔洛韦是一种抗病毒药物，常用于治疗单纯疱疹病毒感染和带状疱疹。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            66,
                            '克拉霉素',
                            '克拉霉素是一种广谱抗生素，常用于治疗呼吸道感染、皮肤感染等细菌感染疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            67,
                            '别嘌醇',
                            '别嘌醇是一种降脂药物，常用于调节血脂水平和预防心血管疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            68,
                            '华法林',
                            '华法林是一种口服抗凝药物，常用于预防血栓形成和治疗血栓性疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            69,
                            '卡培他滨',
                            '卡培他滨是一种抗癌药物，常用于治疗胃癌、食道癌等消化系统肿瘤。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            70,
                            '卡维地洛',
                            '卡维地洛是一种治疗高血压和心绞痛的药物，常用于扩张血管和降低心脏负荷。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            71,
                            '厄洛替尼',
                            '厄洛替尼是一种靶向抗癌药物，常用于治疗非小细胞肺癌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            72,
                            '去氨加压素',
                            '去氨加压素是一种抗利尿药物，常用于治疗水肿和高血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            73,
                            '双丙戊酸',
                            '双丙戊酸是一种抗癫痫药物，常用于控制癫痫发作。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            74,
                            '双嘧达莫',
                            '双嘧达莫是一种解热镇痛药物，常用于缓解发热和疼痛症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            75,
                            '双氯芬酸',
                            '双氯芬酸是一种非处方镇痛药物，常用于缓解轻至中度疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            76,
                            '司来吉兰',
                            '司来吉兰是一种抗癫痫药物，常用于控制癫痫发作。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            77,
                            '吉非替尼',
                            '吉非替尼是一种靶向抗癌药物，常用于治疗慢性髓性白血病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            78,
                            '吉非贝齐',
                            '吉非贝齐是一种抗癫痫药物，常用于控制癫痫发作。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            79,
                            '呋喃妥因',
                            '呋喃妥因是一种镇静催眠药，常用于治疗失眠和焦虑症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            80,
                            '呋喃硫胺',
                            '呋喃硫胺是一种抗感染药物，常用于治疗细菌感染和结核病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            81,
                            '咖啡因',
                            '咖啡因是一种中枢神经兴奋剂，常用于增强警觉性和提神醒脑。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            82,
                            '噻奈普汀钠',
                            '噻奈普汀钠是一种利尿药物，常用于减轻水肿和高血压症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            83,
                            '噻氯匹定',
                            '噻氯匹定是一种抗高血压药物，常用于降低血压和治疗心脏病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            84,
                            '圣约翰草提取物',
                            '圣约翰草提取物是一种中草药，常用于缓解轻度抑郁和焦虑症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            85,
                            '地昔帕明',
                            '地昔帕明是一种抗癫痫药物，常用于控制癫痫发作。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            86,
                            '坦索罗辛',
                            '坦索罗辛是一种治疗高血压和心绞痛的药物，常用于扩张血管和降低心脏负荷。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            87,
                            '塞克硝唑',
                            '塞克硝唑是一种抗感染药物，常用于治疗细菌和寄生虫感染疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            88,
                            '塞曲司特',
                            '塞曲司特是一种抗组胺药物，常用于缓解过敏症状和止咳。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            89,
                            '塞替派',
                            '塞替派是一种抗焦虑药物，常用于缓解焦虑和紧张情绪。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            90,
                            '塞来昔布',
                            '塞来昔布是一种治疗艾滋病的抗病毒药物，常用于延缓疾病进展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            91,
                            '塞美司他',
                            '塞美司他是一种抗结核药物，常用于治疗结核病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            92,
                            '多沙唑嗪',
                            '多沙唑嗪是一种抗过敏药物，常用于缓解过敏症状和止咳。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            93,
                            '多潘立酮',
                            '多潘立酮是一种胃肠道药物，常用于治疗消化性溃疡和胃食管反流病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            94,
                            '夫罗曲坦',
                            '夫罗曲坦是一种抗癌药物，常用于治疗小细胞肺癌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            95,
                            '夫西地酸钠',
                            '夫西地酸钠是一种抗痛风药物，常用于缓解痛风引起的关节炎症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            96,
                            '头孢丙烯',
                            '头孢丙烯是一种广谱抗生素，常用于治疗细菌感染疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            97,
                            '奥利司他',
                            '奥利司他是一种治疗便秘的药物，常用于促进肠道蠕动和通便。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            98,
                            '奥卡西平',
                            '奥卡西平是一种抗精神病药物，常用于治疗精神分裂症和双相情感障碍。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            99,
                            '奥氮平',
                            '奥氮平是一种抗精神病药物，常用于治疗精神分裂症和双相情感障碍。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            100,
                            '对乙酰氨基酚',
                            '对乙酰氨基酚是一种非处方解热镇痛药物，常用于缓解发热和轻至中度疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            101,
                            '对氨基水杨酸钠',
                            '对氨基水杨酸钠是一种非处方解热镇痛药物，常用于缓解发热和轻至中度疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            102,
                            '庆大霉素',
                            '庆大霉素是一种广谱抗生素，可用于治疗多种感染症状'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            103,
                            '拉西地平',
                            '拉西地平是一种钙通道阻滞剂，用于治疗高血压和心绞痛'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            104,
                            '普罗布考',
                            '普罗布考是一种抗酸药，常用于治疗胃溃疡和食道炎'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            105,
                            '普萘洛尔',
                            '普萘洛尔是一种非选择性β受体阻滞剂，用于治疗高血压和心脏病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            106,
                            '曲唑酮',
                            '曲唑酮是一种抗真菌药物，常用于治疗念珠菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            107,
                            '曲普瑞林',
                            '曲普瑞林是一种抗癫痫药物，用于控制癫痫发作'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            108,
                            '替尼泊苷',
                            '替尼泊苷是一种抗肿瘤药物，常用于治疗某些白血病和淋巴瘤'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            109,
                            '替普瑞酮',
                            '替普瑞酮是一种镇痛药，用于缓解中重度疼痛'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            110,
                            '替硝唑',
                            '替硝唑是一种抗感染药物，常用于治疗阴道滴虫感染和其他细菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            111,
                            '替马西泮',
                            '替马西泮是一种镇静催眠药，常用于治疗焦虑和睡眠障碍'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            112,
                            '氟伏沙明',
                            '氟伏沙明是一种抗生素，用于治疗各种类型的细菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            113,
                            '氟康唑',
                            '氟康唑是一种抗真菌药，用于治疗各种类型的真菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            114,
                            '氟比洛芬',
                            '氟比洛芬是一种非甾体类抗炎药，用于治疗炎症和疼痛'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            115,
                            '氟比洛芬酯',
                            '氟比洛芬酯是一种非甾体类抗炎药，用于治疗关节炎、疼痛和月经不适'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            116,
                            '氟胞嘧啶',
                            '氟胞嘧啶是一种抗肿瘤药物，用于治疗直肠癌和乳腺癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            117,
                            '氟膦丙胺',
                            '氟膦丙胺是一种抗肿瘤药物，用于治疗某些类型的恶性肿瘤'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            118,
                            '氢氧化铝',
                            '氢氧化铝是一种常见的抗酸药，用于缓解胃酸过多引起的不适'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            119,
                            '氢氧化铝/氢氧化镁',
                            '氢氧化铝/氢氧化镁是一种抗酸药，用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            120,
                            '氢氧化镁/氢氧化铝',
                            '氢氧化镁/氢氧化铝是一种抗酸药，用于缓解胃酸过多引起的不适'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            121,
                            '氢氯噻嗪',
                            '氢氯噻嗪是一种利尿剂，用于治疗高血压和水肿'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            122,
                            '水飞蓟素',
                            '水飞蓟素是一种抗肿瘤药物，用于治疗肺癌和其他类型的癌症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            123,
                            '沙丁胺醇',
                            '沙丁胺醇是一种支气管扩张剂，用于治疗哮喘和慢性阻塞性肺病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            124,
                            '沙丙蝶呤',
                            '沙丙蝶呤是一种抗肿瘤药物，用于治疗某些类型的白血病和淋巴瘤'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            125,
                            '沙格列汀',
                            '沙格列汀是一种降糖药，用于治疗2型糖尿病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            126,
                            '沙美特罗',
                            '沙美特罗是一种支气管扩张剂，用于治疗慢性阻塞性肺病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            127,
                            '沙铂',
                            '沙铂是一种抗肿瘤药物，用于治疗肺癌、食管癌和卵巢癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            128,
                            '法莫替丁',
                            '法莫替丁是一种H2受体阻滞剂，用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            129,
                            '特拉唑嗪',
                            '特拉唑嗪是一种抗精神病药物，用于治疗精神分裂症和双相情感障碍'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            130,
                            '特比萘芬',
                            '特比萘芬是一种抗真菌药，用于治疗皮肤真菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            131,
                            '环孢素',
                            '环孢素是一种免疫抑制剂，用于预防器官移植后的排斥反应'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            132,
                            '环磷酰胺',
                            '环磷酰胺是一种抗肿瘤药物，用于治疗白血病、淋巴瘤和固体瘤'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            133,
                            '瑞加诺生',
                            '瑞加诺生是一种抗肿瘤药物，用于治疗多发性骨髓瘤'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            134,
                            '瑞格列奈',
                            '瑞格列奈是一种降糖药，用于治疗2型糖尿病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            135,
                            '瑞波西汀',
                            '瑞波西汀是一种抗肿瘤药物，用于治疗肺癌和胃癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            136,
                            '瑞舒伐他汀',
                            '瑞舒伐他汀是一种降脂药，用于治疗高血脂症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            137,
                            '瑞舒伐他汀钙',
                            '瑞舒伐他汀钙是一种降脂药，用于治疗高血脂症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            138,
                            '瑞芬太尼',
                            '瑞芬太尼是一种抗肿瘤药物，用于治疗非小细胞肺癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            139,
                            '甲吡唑',
                            '甲吡唑是一种抗酸药，用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            140,
                            '甲氧氯普胺',
                            '甲氧氯普胺是一种抗过敏药，用于治疗过敏性鼻炎和皮疹'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            141,
                            '碘他拉葡胺',
                            '碘他拉葡胺是一种碘剂，用于治疗甲状腺功能亢进'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            142,
                            '碘化油',
                            '碘化油是一种碘剂，用于治疗甲状腺功能亢进'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            143,
                            '碘化钾',
                            '碘化钾是一种碘剂，用于治疗甲状腺功能亢进'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            144,
                            '碘塞罗宁',
                            '碘塞罗宁是一种碘剂，用于治疗甲状腺功能亢进'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            145,
                            '碘比醇',
                            '碘比醇是一种碘剂，用于医学影像检查'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            146,
                            '碘海醇',
                            '碘海醇是一种碘剂，用于医学影像检查'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            147,
                            '碘解磷定',
                            '碘解磷定是一种碘剂，常用于医学影像检查和甲状腺功能亢进'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            148,
                            '碳酸钙',
                            '碳酸钙是一种补钙药物，常用于治疗钙缺乏和骨质疏松'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            149,
                            '碳酸锂',
                            '碳酸锂是一种用于治疗躁狂和双相情感障碍的心境稳定剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            150,
                            '福莫司汀',
                            '福莫司汀是一种抗肿瘤药物，主要用于治疗多种实体瘤'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            151,
                            '福辛普利钠',
                            '福辛普利钠是一种血管紧张素转化酶抑制剂，用于治疗高血压和心力衰竭'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            152,
                            '秋水仙碱',
                            '秋水仙碱是一种抗肿瘤药物，主要用于治疗急性淋巴细胞性白血病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            153,
                            '米氮平',
                            '米氮平是一种抗精神病药物，主要用于治疗精神分裂症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            154,
                            '索他洛尔',
                            '索他洛尔是一种用于治疗心律失常和高血压的β阻滞剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            155,
                            '索利那新',
                            '索利那新是一种抗凝药，用于预防和治疗血栓形成'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            156,
                            '索曲妥林',
                            '索曲妥林是一种用于治疗哮喘和慢性阻塞性肺病的支气管扩张剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            157,
                            '羟丁酸钠',
                            '羟丁酸钠是一种用于治疗癫痫和神经痛的抗惊厥药'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            158,
                            '羟考酮',
                            '羟考酮是一种用于治疗重度疼痛的强效镇痛药'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            159,
                            '考来烯胺',
                            '考来烯胺是一种用于治疗心力衰竭的利尿剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            160,
                            '胺碘酮',
                            '胺碘酮是一种用于治疗心律失常的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            161,
                            '舍曲林',
                            '舍曲林是一种用于治疗精神分裂症的抗精神病药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            162,
                            '舒尼替尼',
                            '舒尼替尼是一种用于治疗肾癌和胃肠道间质瘤的抗肿瘤药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            163,
                            '舒林酸',
                            '舒林酸是一种用于治疗痛风和高尿酸血症的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            164,
                            '舒马普坦',
                            '舒马普坦是一种用于治疗心力衰竭的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            165,
                            '药用炭',
                            '药用炭是一种用于治疗消化道感染和中毒的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            166,
                            '西咪替丁',
                            '西咪替丁是一种用于治疗胃酸过多和胃溃疡的H2受体阻滞剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            167,
                            '赛庚啶',
                            '赛庚啶是一种用于治疗帕金森病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            168,
                            '酮咯酸氨丁三醇',
                            '酮咯酸氨丁三醇是一种用于治疗癫痫的抗惊厥药'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            169,
                            '酮康唑',
                            '酮康唑是一种广谱抗真菌药，主要用于治疗皮肤、口腔和食管的真菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            170,
                            '酮替芬',
                            '酮替芬是一种用于治疗皮肤真菌感染的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            171,
                            '铁补充剂',
                            '铁补充剂是一种用于治疗缺铁性贫血的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            172,
                            '雷尼替丁',
                            '雷尼替丁是一种用于治疗胃酸过多和胃溃疡的H2受体阻滞剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            173,
                            '青霉胺',
                            '青霉胺是一种用于治疗癌症的化疗药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            174,
                            '非诺贝特',
                            '非诺贝特是一种抗高血压药，主要用于治疗高血压'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            175,
                            'CYP3A4抑制药',
                            'CYP3A4抑制药是一类可以减慢药物代谢，从而提高其他药物浓度的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            176,
                            'CYP3A4诱导药',
                            'CYP3A4诱导药是一类可以加速药物代谢，从而降低其他药物浓度的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            177,
                            '乙醇和其他中枢抑制药',
                            '乙醇和其他中枢抑制药是一类可以降低神经系统活动，用于治疗焦虑、失眠等症状的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            178,
                            '伊曲康唑',
                            '伊曲康唑是一种广谱抗真菌药，主要用于治疗深部真菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            179,
                            '利福平',
                            '利福平是一种用于治疗精神分裂症的抗精神病药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            180,
                            '单胺氧化酶抑制药',
                            '单胺氧化酶抑制药是一种用于治疗抑郁症的抗抑郁药'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            181,
                            '地尔硫?',
                            '地尔硫是一种用于治疗心律失常的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            182,
                            '氟伏沙明',
                            '氟伏沙明是一种广谱抗生素，主要用于治疗多种细菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            183,
                            '特非那定',
                            '特非那定是一种用于治疗注意力缺陷多动障碍的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            184,
                            '红霉素',
                            '红霉素是一种抗生素，主要用于治疗多种细菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            185,
                            '维拉帕米',
                            '维拉帕米是一种钙通道阻滞剂，主要用于治疗高血压和心律失常'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            186,
                            '葡萄柚汁',
                            '葡萄柚汁是一种食物，其含有的某些成分可能与某些药物发生相互作用，影响药物的效果和安全性'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            187,
                            '利托那韦',
                            '利托那韦是一种抗病毒药，主要用于治疗艾滋病和乙型肝炎'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            188,
                            '噻加宾',
                            '噻加宾是一种用于治疗高血压的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            189,
                            '地高辛',
                            '地高辛是一种用于治疗心力衰竭和心律失常的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            190,
                            '异烟肼',
                            '异烟肼是一种抗结核药，主要用于治疗结核病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            191,
                            '扑米酮',
                            '扑米酮是一种用于治疗精神分裂症的抗精神病药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            192,
                            '抗高血压药和利尿降压药',
                            '抗高血压药和利尿降压药是一类用于降低血压，以预防和治疗高血压相关疾病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            193,
                            '氟康唑',
                            '氟康唑是一种广谱抗真菌药，主要用于治疗深部真菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            194,
                            '特比萘芬',
                            '特比萘芬是一种用于治疗皮肤真菌感染的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            195,
                            '莫达非尼',
                            '莫达非尼是一种用于治疗过度嗜睡和阻塞性睡眠呼吸暂停的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            196,
                            '西咪替丁、红霉素',
                            '西咪替丁和红霉素是两种药物，分别用于治疗胃酸过多和胃溃疡，以及多种细菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            197,
                            '西酞普兰',
                            '西酞普兰是一种抗高血压药，主要用于治疗高血压和心力衰竭'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            198,
                            '酒及全麻药、可乐定、镇痛药、吩噻嗪类、单胺氧化酶A型抑制药和三环类抗抑郁药',
                            '这些药物主要用于麻醉、镇痛、抗精神病和抗抑郁'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            199,
                            '雷尼替丁',
                            '雷尼替丁是一种用于治疗胃酸过多和胃溃疡的H2受体阻滞剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            200,
                            '长春碱',
                            '长春碱是一种抗癌药，主要用于治疗肺癌和淋巴瘤'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            201,
                            '罗库溴铵',
                            '罗库溴铵是一种用于治疗帕金森病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            202,
                            '阿昔洛韦',
                            '阿昔洛韦是一种抗病毒药，主要用于治疗疱疹病毒感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            203,
                            '丙吡胺',
                            '丙吡胺是一种抗癫痫药，主要用于治疗癫痫'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            204,
                            '他克莫司',
                            '他克莫司是一种免疫抑制药，主要用于预防器官移植后的排异反应'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            205,
                            '华法林',
                            '华法林是一种抗凝药，主要用于预防和治疗血栓形成'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            206,
                            '卡马西平、丙戊酸',
                            '卡马西平和丙戊酸是两种抗癫痫药，主要用于治疗癫痫'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            207,
                            '咪达唑仑',
                            '咪达唑仑是一种镇静药，主要用于进行麻醉前的镇静或诱导麻醉'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            208,
                            '氯氮平',
                            '氯氮平是一种抗精神病药，主要用于治疗精神分裂症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            209,
                            '洛伐他丁',
                            '洛伐他丁是一种用于治疗高胆固醇血症的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            210,
                            '茶碱',
                            '茶碱是一种支气管扩张剂，主要用于治疗哮喘和慢性阻塞性肺病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            211,
                            '西咪替丁',
                            '西咪替丁是一种用于治疗胃酸过多和胃溃疡的H2受体阻滞剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            212,
                            '麦角胺',
                            '麦角胺是一种用于治疗偏头痛的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            213,
                            '含碘造影剂',
                            '含碘造影剂是一种用于放射学检查的对比剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            214,
                            '头孢氨苄',
                            '头孢氨苄是一种抗生素，主要用于治疗多种细菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            215,
                            '抗凝药',
                            '抗凝药是一类用于预防和治疗血栓形成的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            216,
                            '替诺福韦',
                            '替诺福韦是一种抗病毒药，主要用于治疗乙型肝炎和艾滋病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            217,
                            '树脂类药物',
                            '树脂类药物是一类用于降低血液中胆固醇水平的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            218,
                            '溴丙胺太林',
                            '溴丙胺太林是一种用于治疗帕金森病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            219,
                            '米格列醇',
                            '米格列醇是一种降血糖药，主要用于治疗2型糖尿病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            220,
                            '造影剂',
                            '造影剂是一类用于放射学检查的对比剂'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            221,
                            '食物',
                            '食物是一种可以提供人体所需营养的物质，某些食物可能与某些药物发生相互作用，影响药物的效果和安全性'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            222,
                            '阿德福韦',
                            '阿德福韦是一种抗病毒药，主要用于治疗乙型肝炎和艾滋病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            223,
                            '多巴丝肼',
                            '多巴丝肼是一种抗帕金森病药，主要用于治疗帕金森病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            224,
                            '阿司匹林',
                            '阿司匹林是一种抗血小板药，主要用于预防和治疗心脑血管疾病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            225,
                            '芬特明',
                            '芬特明是一种镇静药，主要用于治疗失眠'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            226,
                            '银杏提取物',
                            '银杏提取物是一种草药，主要用于改善脑部血流并改善记忆'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            227,
                            '表柔比星',
                            '表柔比星是一种抗癌药，主要用于治疗乳腺癌和卵巢癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            228,
                            '波生坦',
                            '波生坦是一种抗高血压药，主要用于治疗高血压'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            229,
                            '奥沙利铂',
                            '奥沙利铂是一种抗癌药，主要用于治疗肺癌、卵巢癌和睾丸癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            230,
                            '降血糖药物（如磺酰胺类及磺酰脲类药物、双胍类药物、胰岛素制剂、胰岛素增敏剂）',
                            '这些药物主要用于控制血糖，以治疗糖尿病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            231,
                            '阿芬太尼',
                            '阿芬太尼是一种抗癌药，主要用于治疗非小细胞肺癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            232,
                            'CYP4503A4的诱导剂',
                            'CYP4503A4的诱导剂是一类可以加速药物代谢，从而降低其他药物浓度的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            233,
                            'Ⅲ类抗心律失常药或拉帕替尼、尼罗替尼、美沙酮、雷诺嗪',
                            '这些药物主要用于治疗心律失常和某些类型的癌症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            234,
                            '乙醇',
                            '乙醇是一种常见的酒精类饮料成分，过量饮用可能导致一系列健康问题，包括肝脏疾病和神经系统损伤'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            235,
                            '二氢可待因',
                            '二氢可待因是一种强效镇痛药，主要用于治疗重度疼痛'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            236,
                            '哌唑嗪、坦洛新、阿夫唑嗪、多沙唑嗪等仅受体拮抗药',
                            '这些药物主要用于治疗精神分裂症和其他精神障碍'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            237,
                            '坦索罗辛',
                            '坦索罗辛是一种用于治疗高血压的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            238,
                            '硝酸酯类药物',
                            '硝酸酯类药物是一类用于治疗心绞痛和其他心脏疾病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            239,
                            '细胞色素P4503A4抑制剂',
                            '细胞色素P4503A4抑制剂是一类可以减慢药物代谢，从而提高其他药物浓度的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            240,
                            '丙磺舒',
                            '丙磺舒是一种抗癫痫药，主要用于治疗癫痫'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            241,
                            '干扰素或甲氨蝶呤（鞘内）',
                            '干扰素和甲氨蝶呤是两种药物，分别用于治疗多种病毒感染和白血病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            242,
                            '齐多夫定',
                            '齐多夫定是一种抗精神病药，主要用于治疗精神分裂症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            243,
                            '西沙必利、匹莫齐特',
                            '西沙必利和匹莫齐特是两种药物，分别用于治疗胃酸过多和胃溃疡，以及抑郁症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            244,
                            '阿司咪唑',
                            '阿司咪唑是一种抗酸药，主要用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            245,
                            '华法林',
                            '华法林是一种抗凝药，主要用于预防和治疗血栓形成'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            246,
                            '麦角生物碱',
                            '麦角生物碱是一种用于治疗偏头痛的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            247,
                            '三唑仑',
                            '三唑仑是一种镇静药，主要用于治疗失眠'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            248,
                            '咪达唑仑',
                            '咪达唑仑是一种镇静药，主要用于进行麻醉前的镇静或诱导麻醉'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            249,
                            '环孢素',
                            '环孢素是一种免疫抑制药，主要用于预防器官移植后的排异反应'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            250,
                            '奥美拉唑',
                            '奥美拉唑是一种抗酸药，主要用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            251,
                            '雷尼替丁',
                            '雷尼替丁是一种抗酸药，主要用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            252,
                            '苯妥因',
                            '苯妥因是一种抗癫痫药，主要用于治疗癫痫'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            253,
                            '溴隐亭',
                            '溴隐亭是一种抗帕金森病药，主要用于治疗帕金森病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            254,
                            '阿芬他尼',
                            '阿芬他尼是一种抗癌药，主要用于治疗非小细胞肺癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            255,
                            '海索比妥',
                            '海索比妥是一种镇静药，主要用于治疗失眠和焦虑'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            256,
                            '丙吡胺',
                            '丙吡胺是一种抗癫痫药，主要用于治疗癫痫'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            257,
                            '洛伐他丁',
                            '洛伐他丁是一种用于治疗高胆固醇血症的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            258,
                            '他克莫司',
                            '他克莫司是一种免疫抑制药，主要用于预防器官移植后的排异反应'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            259,
                            '阿利吉仑',
                            '阿利吉仑是一种用于治疗帕金森病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            260,
                            '花粉',
                            '花粉是一种常见的过敏源，可能导致过敏性鼻炎、哮喘等症状'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            261,
                            '银杏',
                            '银杏是一种草药，主要用于改善脑部血流并改善记忆'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            262,
                            '鱼油',
                            '鱼油是一种富含ω-3不饱和脂肪酸的营养补充剂，有助于降低血液中的甘油三酯水平'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            263,
                            '溴夫定',
                            '溴夫定是一种镇静药，主要用于治疗失眠'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            264,
                            '利福平、利福布丁等肝药酶诱导药',
                            '这些药物可以加速药物在肝脏的代谢，从而降低其他药物的浓度'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            265,
                            '多柔比星',
                            '多柔比星是一种抗癌药，主要用于治疗乳腺癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            266,
                            '氟西汀',
                            '氟西汀是一种抗抑郁药，主要用于治疗抑郁症和强迫症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            267,
                            '肾上腺素',
                            '肾上腺素是一种用于治疗急性过敏反应的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            268,
                            '芬太尼',
                            '芬太尼是一种强效镇痛药，主要用于治疗重度疼痛'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            269,
                            '苯丙香豆素',
                            '苯丙香豆素是一种抗癫痫药，主要用于治疗癫痫'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            270,
                            '莫索尼定',
                            '莫索尼定是一种用于治疗帕金森病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            271,
                            'CYP3 A4强诱导药',
                            'CYP3 A4强诱导药是一类可以加速药物代谢，从而降低其他药物浓度的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            272,
                            '奥美拉唑',
                            '奥美拉唑是一种抗酸药，主要用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            273,
                            '烟草',
                            '烟草是一种含有尼古丁的产品，长期使用可能导致各种健康问题，包括肺癌、心脏病和慢性阻塞性肺病'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            274,
                            '三环类抗抑郁药、氯丙嗪、卡马西平',
                            '这些药物主要用于治疗抑郁症、精神分裂症和癫痫'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            275,
                            '依替巴肽',
                            '依替巴肽是一种用于治疗2型糖尿病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            276,
                            '吡罗昔康',
                            '吡罗昔康是一种抗癌药，主要用于治疗乳腺癌和卵巢癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            277,
                            '吲哚美辛、辛伐他汀',
                            '吲哚美辛和辛伐他汀是两种药物，分别用于治疗关节炎和高胆固醇血症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            278,
                            '利培酮',
                            '利培酮是一种抗精神病药，主要用于治疗精神分裂症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            279,
                            '氟尿嘧啶',
                            '氟尿嘧啶是一种抗癌药，主要用于治疗结肠癌和直肠癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            280,
                            '伏立康唑',
                            '伏立康唑是一种抗真菌药，主要用于治疗各种真菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            281,
                            '保钾利尿药',
                            '保钾利尿药是一类用于治疗高血压和心力衰竭的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            282,
                            '可待因',
                            '可待因是一种镇痛药，主要用于治疗中度至重度疼痛'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            283,
                            '抗高血压药',
                            '抗高血压药是一类用于治疗高血压的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            284,
                            '泮托拉唑',
                            '泮托拉唑是一种抗酸药，主要用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            285,
                            '甲氨蝶呤',
                            '甲氨蝶呤是一种抗癌药，主要用于治疗乳腺癌和卵巢癌'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            286,
                            '硫糖铝',
                            '硫糖铝是一种抗酸药，主要用于治疗胃酸过多和胃溃疡'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            287,
                            '阿莫西林',
                            '阿莫西林是一种抗生素，主要用于治疗各种细菌感染'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            288,
                            '降糖药',
                            '降糖药是一类用于控制血糖，以治疗糖尿病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            289,
                            '其他单胺氧化酶抑制药',
                            '这些药物可以抑制单胺氧化酶的活性，从而影响神经递质的代谢'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            290,
                            '卡马西平、奥卡西平',
                            '卡马西平和奥卡西平是两种抗癫痫药，主要用于治疗癫痫'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            291,
                            '哌替啶、曲马多、美沙酮、右丙氧芬或右美沙芬、安非他酮',
                            '这些药物主要用于治疗癫痫、疼痛和抑郁症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            292,
                            '氟哌利多',
                            '氟哌利多是一种抗精神病药，主要用于治疗精神分裂症'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            293,
                            '米那普仑',
                            '米那普仑是一种抗高血压药，主要用于治疗高血压'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            294,
                            '肾上腺素β受体激动药',
                            '肾上腺素β受体激动药是一类用于治疗哮喘和慢性阻塞性肺病的药物'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            295,
                            '胍乙啶',
                            '胍乙啶是一种抗肿瘤药物，常用于治疗白血病和淋巴瘤等恶性肿瘤。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            296,
                            '色氨酸',
                            '色氨酸是一种必需氨基酸，主要用于合成蛋白质和调节神经递质。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            297,
                            '苯丙胺或间羟胺',
                            '苯丙胺和间羟胺是一类中枢兴奋剂，常用于治疗注意力缺陷多动障碍（ADHD）和嗜睡症等疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            298,
                            '赛庚啶',
                            '赛庚啶是一种抗生素，常用于治疗呼吸道感染和皮肤感染等细菌感染疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            299,
                            '酪氨酸、甲基多巴、哌甲酯',
                            '酪氨酸、甲基多巴和哌甲酯是一类用于治疗帕金森病和震颤麻痹等运动障碍疾病的药物。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            300,
                            '雌二醇/左炔诺孕酮',
                            '雌二醇和左炔诺孕酮是一种用于女性避孕和激素替代治疗的药物组合。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            301,
                            '马普替林',
                            '马普替林是一种抗抑郁药物，常用于治疗抑郁症和焦虑症等精神障碍。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            302,
                            '他汀类',
                            '他汀类药物是一类用于降低胆固醇和预防心血管疾病的药物，常用于高血脂症的治疗。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            303,
                            '依折麦布',
                            '依折麦布是一种镇痛药物，常用于缓解中度至重度疼痛，如术后疼痛和癌症疼痛等。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            304,
                            '口服抗凝药',
                            '口服抗凝药是一类用于预防血栓形成的药物，常用于治疗心脏病和血栓性疾病等。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            305,
                            '孟鲁司特',
                            '孟鲁司特是一种抗过敏药物，常用于缓解过敏性鼻炎和哮喘等过敏性疾病的症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            306,
                            '瑞格列奈',
                            '瑞格列奈是一种口服降糖药物，常用于治疗2型糖尿病和胰岛素抵抗等疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            307,
                            '瑞舒伐他汀',
                            '瑞舒伐他汀是一种用于降低胆固醇的药物，常用于治疗高血脂症和预防心血管疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            308,
                            '考来替泊',
                            '考来替泊是一种用于治疗高血压和心绞痛等心血管疾病的药物。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            309,
                            '丙磺舒和苯磺唑酮',
                            '丙磺舒和苯磺唑酮是一类抗癫痫药物，常用于治疗癫痫和其他类似疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            310,
                            '碱性药物如碳酸氢钠、枸橼酸钠',
                            '碱性药物如碳酸氢钠和枸橼酸钠常用于治疗胃酸过多和消化不良等胃肠道疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            311,
                            '异烟肼、甲丙氨酯',
                            '异烟肼和甲丙氨酯是一类抗结核药物，常用于结核病的治疗和预防。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            312,
                            '水杨酸',
                            '水杨酸是一种非处方止痛药和抗炎药，常用于缓解轻至中度疼痛和发热等症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            313,
                            '二氢麦角碱',
                            '二氢麦角碱是一种抗帕金森病药物，常用于改善帕金森病的运动障碍。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            314,
                            '环孢素',
                            '环孢素是一种免疫抑制剂，常用于预防器官移植排斥反应和治疗自身免疫性疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            315,
                            '血小板聚集抑制药、溶栓药及导致低凝血酶原血症或血小板减少的药物',
                            '血小板聚集抑制药、溶栓药及导致低凝血酶原血症或血小板减少的药物是一类用于预防血栓形成和治疗心血管疾病的药物。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            316,
                            '西拉非班',
                            '西拉非班是一种抗癫痫药物，常用于治疗癫痫和其他类似疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            317,
                            '他林洛尔',
                            '他林洛尔是一种负性肌力药物，常用于治疗高血压和心绞痛等心血管疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            318,
                            '伊立替康',
                            '根据医生处方使用伊立替康。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            319,
                            '伊马替尼',
                            '伊马替尼是一种用于治疗白血病和其他肿瘤的药物。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            320,
                            '口服避孕药',
                            '口服避孕药是一种常用的避孕方法之一。请按照医生的指示使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            321,
                            '布洛芬',
                            '布洛芬是一种用于缓解疼痛、退烧和抗炎的非处方药。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            322,
                            '泼尼松',
                            '泼尼松是一种类固醇类药物，主要用于抗炎、免疫抑制等治疗。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            323,
                            '蛋白酶抑制剂',
                            '蛋白酶抑制剂是一类药物，用于抑制蛋白酶的活性。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            324,
                            '卡马西平',
                            '卡马西平是一种常用的抗癫痫药物。请按医生的指示使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            325,
                            '吗啡',
                            '吗啡是一种强效镇痛药物，需在医生监督下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            326,
                            '奈法唑酮',
                            '奈法唑酮是一种治疗癫痫的药物。请遵循医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            327,
                            '帕罗西汀',
                            '帕罗西汀是一种用于治疗抑郁症的药物。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            328,
                            '硫利达嗪',
                            '硫利达嗪是一种抗精神病药物，常用于治疗精神分裂症。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            329,
                            '西那卡塞',
                            '西那卡塞是一种用于治疗高血压和心绞痛的药物。请遵循医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            330,
                            '双硫仑',
                            '双硫仑是一种镇静药物，常用于治疗焦虑和失眠。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            331,
                            '导致溶血性贫血性质的药物',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            332,
                            '尿激酶',
                            '尿激酶是一种用于溶解血栓的药物。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            333,
                            '放疗',
                            '放疗是一种常见的肿瘤治疗方法之一，具体方案需由医生制定。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            334,
                            '琥珀胆碱',
                            '琥珀胆碱是一种用于改善记忆和认知功能的药物。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            335,
                            'CYP2C9抑制剂',
                            'CYP2C9抑制剂是一类药物，通过抑制CYP2C9酶的活性起到药物相互作用的效果。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            336,
                            'β受体拮抗药、抗精神病药',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            337,
                            '吉西他滨',
                            '吉西他滨是一种用于治疗癌症的化疗药物。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            338,
                            '氯吡格雷',
                            '氯吡格雷是一种抗血小板药物，常用于预防血栓形成。请遵循医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            339,
                            '美托洛尔',
                            '美托洛尔是一种用于治疗高血压和心脏病的药物。请按照医生的指示使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            340,
                            '苯妥英',
                            '苯妥英是一种抗癫痫药物，常用于控制癫痫发作。请遵循医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            341,
                            'β受体拮抗药、利尿药、ACEI、钙通道阻滞药',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            342,
                            '他达拉非',
                            '他达拉非是一种用于治疗高血压和心脏病的药物。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            343,
                            '吲哚美辛或其他非甾体抗炎药',
                            '吲哚美辛和其他非甾体抗炎药常用于缓解疼痛和消炎。请按照医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            344,
                            '拟交感胺类',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            345,
                            '硝苯地平',
                            '硝苯地平是一种用于治疗心绞痛和高血压的药物。请遵循医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            346,
                            '雌激素',
                            '雌激素是一类重要的女性激素，常用于激素替代治疗等方面。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            347,
                            '非那雄胺',
                            '非那雄胺是一种用于治疗前列腺肥大的药物。请遵循医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            348,
                            'H2受体拮抗药',
                            'H2受体拮抗药是一类常用的抗酸药物，常用于治疗胃酸相关疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            349,
                            '对乙酰氨基酚、氨苄西林、左旋多巴、四环素等',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            350,
                            '抗酸药和抑制胃酸分泌的药物',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            351,
                            '溴隐亭',
                            '溴隐亭是一种用于缓解咳嗽和感冒症状的药物。请遵循医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            352,
                            '米氮平',
                            '米氮平是一种用于治疗精神分裂症的抗精神病药物。请按照医生的指示使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            353,
                            '其他5 - HTID受体激动剂',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            354,
                            '香豆素',
                            '香豆素是一种外用抗凝剂，常用于改善血液循环。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            355,
                            '呋塞米、依他尼酸、布美他尼等强利尿药，卡氮芥、链佐星等抗肿瘤药及氨基糖苷类抗生素',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            356,
                            '拉莫三嗪',
                            '拉莫三嗪是一种抗癫痫药物，常用于控制癫痫发作。请在医生指导下使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            357,
                            '皮质醇',
                            '皮质醇是一种皮质激素，常用于替代治疗和抗炎等方面。请按照医生的指示使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            358,
                            'CYPIA2抑制药',
                            'CYPIA2抑制药是一类药物，通过抑制CYPIA2酶的活性起到药物相互作用的效果。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            359,
                            '其他作用于中枢神经系统的药物及乙醇',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            360,
                            '可引起Q-T间期延长的药物',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            361,
                            '兰索拉唑',
                            '兰索拉唑是一种常用的抗酸药物，常用于治疗胃酸相关疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            362,
                            '双氯芬酸',
                            '双氯芬酸是一种用于缓解疼痛和消炎的药物。请按照医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            363,
                            '尼扎替丁',
                            '尼扎替丁是一种用于治疗胃酸相关疾病的药物。请遵循医生的建议使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            364,
                            '巴比妥类（如苯巴比妥）或解痉药（如颠茄）',
                            '请提供具体的药物名称以便准确判断。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            365,
                            '帕瑞考昔',
                            '帕瑞考昔是一种用于降低胆固醇的药物，常用于治疗高血脂症。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            366,
                            '普兰林肽',
                            '普兰林肽是一种用于降低胃酸分泌的药物，常用于治疗胃溃疡等疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            367,
                            '曲马多',
                            '曲马多是一种镇痛药物，常用于缓解中度到重度的疼痛。请按照医生的指示使用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            368,
                            '替米沙坦',
                            '替米沙坦是一种用于治疗高血压和心脏疾病的药物。它属于血管紧张素II受体拮抗剂，可以通过扩张血管来降低血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            369,
                            '氯霉素',
                            '氯霉素是一种广谱抗生素，常用于治疗多种感染，包括肺炎、腹泻和淋巴瘤等。它可以通过阻止细菌细胞的蛋白质合成来杀死细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            370,
                            '环丙沙星',
                            '环丙沙星是一种喹诺酮类抗生素，用于治疗膀胱炎、尿道感染和细菌性痢疾等感染。它可以通过干扰细菌DNA复制和细胞分裂来杀死细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            371,
                            '罗非昔布',
                            '罗非昔布是一种用于治疗消化性溃疡和胃食管反流病的药物。它可通过抑制胃酸的分泌来减少胃部刺激，从而减轻疼痛和不适感。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            372,
                            '酮咯酸',
                            '酮咯酸是一种抗癫痫药物，也可用于治疗神经性疼痛和焦虑症等疾病。它可以通过增强神经递质GABA在中枢神经系统中的作用来减轻疼痛和焦虑感。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            373,
                            '阿司匹林',
                            '阿司匹林是一种水杨酸盐制剂，常用于缓解疼痛、发热和减轻炎症。它还可以用于预防心脏病和中风等疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            374,
                            '丙磺舒',
                            '丙磺舒是一种治疗高血压和心脏疾病的药物。它是一种硫脲类利尿剂，可以通过促进尿液排出来减轻体内液体积聚，从而降低血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            375,
                            '乙硫异烟胺',
                            '乙硫异烟胺是一种用于治疗结核病的药物。它可以通过干扰细菌的细胞壁合成和代谢来杀死结核菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            376,
                            '香豆素',
                            '香豆素是一种血管扩张剂，可以用于治疗心脏疾病和循环系统疾病。它可以通过扩张血管和促进血液流动来增加氧和营养物质的供应。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            377,
                            '维拉必利',
                            '维拉必利是一种治疗消化不良、胃食管反流和抑郁症等疾病的药物。它可以通过促进胃肠道运动和增强多巴胺的作用来缓解症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            378,
                            '西咪替丁',
                            '西咪替丁是一种用于治疗胃溃疡和消化性溃疡的药物。它可以通过抑制胃酸的分泌来减少胃部刺激，促进溃疡的愈合。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            379,
                            '雷尼替丁',
                            '雷尼替丁是一种抗酸药，常用于缓解胃灼热、胃溃疡和食管炎等症状。它可以通过减少胃酸的分泌来缓解胃部不适。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            380,
                            '伐昔洛韦',
                            '伐昔洛韦是一种抗病毒药物，常用于治疗带状疱疹和生殖器疱疹等病毒感染。它可以通过抑制病毒的复制和传播来减轻症状和促进康复。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            381,
                            '利伐沙班',
                            '利伐沙班是一种抗凝血药物，常用于预防和治疗血栓性疾病，如深静脉血栓和肺栓塞。它可以通过抑制凝血因子的活性来防止血栓形成。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            382,
                            '利奈唑胺',
                            '利奈唑胺是一种抗癌药物，常用于治疗胃肠道肿瘤和乳腺癌等恶性肿瘤。它可以通过抑制肿瘤细胞的生长和分裂来抑制肿瘤的发展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            383,
                            '司帕沙星',
                            '司帕沙星是一种喹诺酮类抗生素，用于治疗尿路感染和呼吸道感染等细菌感染。它可以通过干扰细菌DNA的复制和合成来杀死细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            384,
                            '吉米沙星',
                            '吉米沙星是一种广谱抗生素，常用于治疗呼吸道、泌尿系统和皮肤软组织感染等疾病。它可以通过阻断细菌DNA的复制和合成来杀灭细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            385,
                            '呋山那韦',
                            '呋山那韦是一种抗病毒药物，常用于治疗艾滋病病毒（HIV）感染。它可以通过抑制病毒的复制和传播来减缓疾病的进展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            386,
                            '头孢布烯',
                            '头孢布烯是一种头孢菌素类抗生素，常用于治疗细菌感染，如呼吸道感染和皮肤软组织感染。它可以通过阻断细菌细胞壁的合成来杀灭细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            387,
                            '头孢泊肟',
                            '头孢泊肟是一种头孢菌素类抗生素，常用于治疗呼吸道感染和泌尿系统感染等细菌感染。它可以通过阻断细菌细胞壁的合成来杀灭细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            388,
                            '左甲状腺素',
                            '左甲状腺素是一种甲状腺激素药物，常用于治疗甲状腺功能减退和甲状腺癌等疾病。它可以补充体内甲状腺激素的不足，调节代谢和维持正常的生理功能。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            389,
                            '替尼达普',
                            '替尼达普是一种靶向治疗药物，常用于治疗肺癌和胃肠道间质瘤等恶性肿瘤。它可以通过抑制肿瘤细胞的生长和扩散来抑制肿瘤的发展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            390,
                            '索他洛尔',
                            '索他洛尔是一种非选择性β受体阻断剂，常用于治疗高血压、心绞痛和心律失常等心血管疾病。它可以通过阻断肾上腺素对β受体的作用来降低心率和血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            391,
                            '舍吲哚',
                            '舍吲哚是一种抗精神病药物，常用于治疗精神分裂症和双相情感障碍等精神疾病。它可以通过调节脑内多巴胺和5-羟色胺等神经递质的活动来减轻精神症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            392,
                            '西洛司特',
                            '西洛司特是一种选择性5-羟色胺受体拮抗剂，常用于治疗过敏性鼻炎和哮喘等呼吸道疾病。它可以通过阻断5-羟色胺对受体的作用来缓解过敏症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            393,
                            '阿奇霉素',
                            '阿奇霉素是一种广谱抗生素，常用于治疗上呼吸道感染和皮肤软组织感染等细菌感染。它可以通过抑制细菌蛋白质合成来杀灭细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            394,
                            '齐拉西酮',
                            '齐拉西酮是一种镇静剂和催眠药，常用于治疗焦虑和失眠等症状。它可以通过影响中枢神经系统的GABA受体来产生镇静和催眠作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            395,
                            '三氧化二砷',
                            '三氧化二砷是一种抗癌药物，常用于治疗急性早幼粒细胞白血病和急性促红细胞生成素细胞白血病等血液恶性肿瘤。它可以通过诱导细胞凋亡和抑制白血病干细胞的增殖来抑制肿瘤的发展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            396,
                            '氟哌利多',
                            '氟哌利多是一种神经精神药物，常用于治疗精神分裂症、妄想症和情感障碍等精神疾病。它可以通过阻断多巴胺D2受体的作用来减轻精神症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            397,
                            '氟卡尼',
                            '氟卡尼是一种钙通道阻滞剂，常用于治疗心绞痛和高血压等心血管疾病。它可以通过阻断钙离子进入心肌和平滑肌细胞来降低心率和血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            398,
                            '左醋美沙多',
                            '左醋美沙多是一种非甾体抗炎药，常用于缓解轻至中度疼痛和发热等症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            399,
                            '索他洛尔',
                            '索他洛尔是一种非选择性β受体阻断剂，常用于治疗高血压、心绞痛和心律失常等心血管疾病。它可以通过阻断肾上腺素对β受体的作用来降低心率和血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            400,
                            '酮色林',
                            '酮色林是一种质子泵抑制剂，常用于治疗胃溃疡、消化性溃疡和胃食管反流病等胃肠道疾病。它可以通过抑制胃酸的分泌来减轻胃部不适和促进溃疡的愈合。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            401,
                            '乌洛托品',
                            '乌洛托品是一种抗胆碱药物，常用于治疗消化性溃疡和冠状动脉缺血等疾病。它可以通过阻断胆碱对M受体的作用来减少胆汁分泌、降低内脏平滑肌张力和扩张冠状动脉。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            402,
                            '二氮嗪',
                            '二氮嗪是一种镇静剂和抗焦虑药，常用于治疗焦虑、失眠和癫痫等疾病。它可以通过影响中枢神经系统的GABA受体来产生镇静和抗焦虑作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            403,
                            '别嘌醇',
                            '别嘌醇是一种利尿剂和降压药，常用于治疗高血压、水肿和心力衰竭等疾病。它可以通过抑制肾脏中Na+/Cl-共转运体的作用来增强钠离子和水分的排泄。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            404,
                            '吩噻嗪类药物',
                            '吩噻嗪类药物是一种抗精神病药物，常用于治疗精神分裂症和双相情感障碍等精神疾病。它可以通过阻断多巴胺D2受体的作用来减轻精神症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            405,
                            '吲哚美辛',
                            '吲哚美辛是一种非甾体抗炎药，常用于缓解轻至中度疼痛和发热等症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            406,
                            '呋塞米',
                            '呋塞米是一种利尿剂，常用于治疗高血压、水肿和心力衰竭等疾病。它可以通过抑制肾脏中Na+/K+/2Cl-共转运体的作用来增强钠离子、氯离子和水分的排泄。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            407,
                            '多巴胺',
                            '多巴胺是一种神经递质和荷尔蒙，常用于治疗帕金森病和心源性休克等疾病。它可以通过影响中枢神经系统和末梢血管系统来产生抗震颤和扩张血管的作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            408,
                            '奥美沙坦',
                            '奥美沙坦是一种血管紧张素Ⅱ受体拮抗剂，常用于治疗高血压和心力衰竭等疾病。它可以通过阻断血管紧张素Ⅱ对受体的作用来降低血压和心脏负担。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            409,
                            '对乙酰氨基酚',
                            '对乙酰氨基酚是一种解热镇痛药，常用于缓解轻至中度的头痛、牙痛、关节痛、肌肉痛、感冒和发热等症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            410,
                            '巴比妥类药',
                            '巴比妥类药是一种镇静药和催眠药，常用于治疗焦虑、失眠、癫痫和痉挛等疾病。它可以通过增强GABA的作用来产生镇静和抗惊厥作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            411,
                            '托伐普坦',
                            '托伐普坦是一种抗血小板药物，常用于预防和治疗心血管疾病的血栓形成。它可以通过抑制血小板聚集和减少血栓的形成来降低心血管事件的发生率。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            412,
                            '抗痛风药',
                            '抗痛风药是一类用于治疗痛风和高尿酸血症的药物，包括利尿剂、NSAIDs、可乐定和别嘌醇等。它们可以通过不同的机制来减少关节炎症和尿酸水平。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            413,
                            '拟交感胺类药',
                            '拟交感胺类药是一类药物，常用于治疗哮喘、支气管痉挛和过敏性鼻炎等呼吸道疾病。它们可以通过模拟交感神经系统的作用来扩张支气管和减少分泌物的分泌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            414,
                            '氨苯蝶啶',
                            '氨苯蝶啶是一种非甾体抗炎药，常用于缓解轻至中度的头痛、牙痛、关节痛、肌肉痛和痛经等疼痛症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            415,
                            '氯化钠',
                            '氯化钠是一种常见的生理盐水，常用于静脉注射、口服、灌肠和皮下注射等途径。它可以用于补充体液、调节电解质平衡和维持细胞功能。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            416,
                            '洋地黄类药物、胺碘酮等',
                            '洋地黄类药物和胺碘酮是一类心血管药物，常用于治疗心脏疾病如心力衰竭和心律失常等。它们可以通过不同的机制来增强心脏收缩力和稳定心律。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            417,
                            '激动仅受体的拟肾上腺类药物',
                            '激动仅受体的拟肾上腺类药物是一类药物，常用于治疗哮喘、支气管痉挛和过敏性鼻炎等呼吸道疾病。它们可以通过模拟肾上腺素的作用来扩张支气管和减少分泌物的分泌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            418,
                            '甲氧苄啶',
                            '甲氧苄啶是一种非甾体抗炎药，常用于缓解轻至中度的头痛、牙痛、关节痛、肌肉痛和痛经等疼痛症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            419,
                            '碳酸氢钠',
                            '碳酸氢钠是一种常见的碱性药物，常用于治疗胃酸过多、代谢性酸中毒和尿路感染等疾病。它可以中和体内过多的酸性物质和增加尿液的pH值。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            420,
                            '福辛普利',
                            '福辛普利是一种血管紧张素转换酶抑制剂，常用于治疗高血压和心力衰竭等心血管疾病。它可以通过抑制血管紧张素Ⅰ转换为血管紧张素Ⅱ的作用来降低血压和心脏负担。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            421,
                            '维生素D',
                            '维生素D是一种脂溶性维生素，常用于预防和治疗骨质疏松症、佝偻病和肌无力等疾病。它可以促进钙的吸收和利用，调节钙磷代谢和维持骨骼健康。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            422,
                            '缬沙坦',
                            '缬沙坦是一种血管紧张素Ⅱ受体拮抗剂，常用于治疗高血压和心力衰竭等心血管疾病。它可以通过阻断血管紧张素Ⅱ对受体的作用来降低血压和心脏负担。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            423,
                            '羟丁酸钠',
                            '羟丁酸钠是一种抗癫痫药物，常用于治疗癫痫和其他抽搐性疾病。它可以通过增强GABA的作用来产生抗惊厥作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            424,
                            '肾上腺皮质激素',
                            '肾上腺皮质激素是一类内源性激素，常用于治疗多种炎症性和免疫相关疾病，如哮喘、风湿性关节炎、过敏反应和自身免疫疾病等。它们通过抑制炎症反应、减轻免疫系统过度活跃来发挥作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            425,
                            '促肾上腺皮质激素',
                            '促肾上腺皮质激素是一类药物，常用于治疗肾上腺功能不全和先天性肾上腺皮质增生症等疾病。它们可以通过刺激肾上腺皮质产生更多的肾上腺皮质激素来纠正激素缺乏的状态。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            426,
                            '雌激素',
                            '雌激素是一类女性激素，常用于治疗更年期综合征、骨质疏松症和乳腺癌等疾病。它们可以通过替代或补充体内缺乏的雌激素来维持正常的生理功能。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            427,
                            '两性霉素B',
                            '两性霉素B是一种抗真菌药物，常用于治疗严重的真菌感染，特别是对念珠菌属和曲霉菌属有效。它可以通过干扰真菌细胞壁的合成来抑制真菌的生长和繁殖。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            428,
                            '贝那普利',
                            '贝那普利是一种血管紧张素转换酶抑制剂，常用于治疗高血压和心力衰竭等心血管疾病。它可以通过抑制血管紧张素Ⅰ转换为血管紧张素Ⅱ的作用来降低血压和心脏负担。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            429,
                            '金刚烷胺',
                            '金刚烷胺是一种抗结核药物，常用于治疗结核病。它可以通过抑制结核菌的生长和繁殖来达到治疗效果。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            430,
                            'B肾上腺素受体拮抗药',
                            'B肾上腺素受体拮抗药是一类药物，常用于治疗高血压、心绞痛和心力衰竭等疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            431,
                            '锂制剂',
                            '锂制剂是一类药物，常用于治疗双相情感障碍（躁郁症）、抑郁症和部分精神疾病等。它们可以通过影响神经递质的代谢和释放来调节情绪和心理状态。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            432,
                            '西咪替丁',
                            '西咪替丁是一种用于治疗胃溃疡和消化性溃疡的药物。它可以通过抑制胃酸的分泌来减少胃部刺激，促进溃疡的愈合。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            433,
                            '雷尼替丁',
                            '雷尼替丁是一种抗酸药，常用于缓解胃灼热、胃溃疡和食管炎等症状。它可以通过减少胃酸的分泌来缓解胃部不适。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            434,
                            '伐昔洛韦',
                            '伐昔洛韦是一种抗病毒药物，常用于治疗带状疱疹和生殖器疱疹等病毒感染。它可以通过抑制病毒的复制和传播来减轻症状和促进康复。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            435,
                            '利伐沙班',
                            '利伐沙班是一种抗凝血药物，常用于预防和治疗血栓性疾病，如深静脉血栓和肺栓塞。它可以通过抑制凝血因子的活性来防止血栓形成。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            436,
                            '利奈唑胺',
                            '利奈唑胺是一种抗癌药物，常用于治疗胃肠道肿瘤和乳腺癌等恶性肿瘤。它可以通过抑制肿瘤细胞的生长和分裂来抑制肿瘤的发展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            437,
                            '司帕沙星',
                            '司帕沙星是一种喹诺酮类抗生素，用于治疗尿路感染和呼吸道感染等细菌感染。它可以通过干扰细菌DNA的复制和合成来杀死细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            438,
                            '吉米沙星',
                            '吉米沙星是一种广谱抗生素，常用于治疗呼吸道、泌尿系统和皮肤软组织感染等疾病。它可以通过阻断细菌DNA的复制和合成来杀灭细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            439,
                            '呋山那韦',
                            '呋山那韦是一种抗病毒药物，常用于治疗艾滋病病毒（HIV）感染。它可以通过抑制病毒的复制和传播来减缓疾病的进展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            440,
                            '头孢布烯',
                            '头孢布烯是一种头孢菌素类抗生素，常用于治疗细菌感染，如呼吸道感染和皮肤软组织感染。它可以通过阻断细菌细胞壁的合成来杀灭细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            441,
                            '头孢泊肟',
                            '头孢泊肟是一种头孢菌素类抗生素，常用于治疗呼吸道感染和泌尿系统感染等细菌感染。它可以通过阻断细菌细胞壁的合成来杀灭细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            442,
                            '左甲状腺素',
                            '左甲状腺素是一种甲状腺激素药物，常用于治疗甲状腺功能减退和甲状腺癌等疾病。它可以补充体内甲状腺激素的不足，调节代谢和维持正常的生理功能。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            443,
                            '替尼达普',
                            '替尼达普是一种靶向治疗药物，常用于治疗肺癌和胃肠道间质瘤等恶性肿瘤。它可以通过抑制肿瘤细胞的生长和扩散来抑制肿瘤的发展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            444,
                            '索他洛尔',
                            '索他洛尔是一种非选择性β受体阻断剂，常用于治疗高血压、心绞痛和心律失常等心血管疾病。它可以通过阻断肾上腺素对β受体的作用来降低心率和血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            445,
                            '舍吲哚',
                            '舍吲哚是一种抗精神病药物，常用于治疗精神分裂症和双相情感障碍等精神疾病。它可以通过调节脑内多巴胺和5-羟色胺等神经递质的活动来减轻精神症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            446,
                            '西洛司特',
                            '西洛司特是一种选择性5-羟色胺受体拮抗剂，常用于治疗过敏性鼻炎和哮喘等呼吸道疾病。它可以通过阻断5-羟色胺对受体的作用来缓解过敏症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            447,
                            '阿奇霉素',
                            '阿奇霉素是一种广谱抗生素，常用于治疗上呼吸道感染和皮肤软组织感染等细菌感染。它可以通过抑制细菌蛋白质合成来杀灭细菌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            448,
                            '齐拉西酮',
                            '齐拉西酮是一种镇静剂和催眠药，常用于治疗焦虑和失眠等症状。它可以通过影响中枢神经系统的GABA受体来产生镇静和催眠作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            449,
                            '三氧化二砷',
                            '三氧化二砷是一种抗癌药物，常用于治疗急性早幼粒细胞白血病和急性促红细胞生成素细胞白血病等血液恶性肿瘤。它可以通过诱导细胞凋亡和抑制白血病干细胞的增殖来抑制肿瘤的发展。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            450,
                            '氟哌利多',
                            '氟哌利多是一种神经精神药物，常用于治疗精神分裂症、妄想症和情感障碍等精神疾病。它可以通过阻断多巴胺D2受体的作用来减轻精神症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            451,
                            '氟卡尼',
                            '氟卡尼是一种钙通道阻滞剂，常用于治疗心绞痛和高血压等心血管疾病。它可以通过阻断钙离子进入心肌和平滑肌细胞来降低心率和血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            452,
                            '左醋美沙多',
                            '左醋美沙多是一种非甾体抗炎药，常用于缓解轻至中度疼痛和发热等症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            453,
                            '索他洛尔',
                            '索他洛尔是一种非选择性β受体阻断剂，常用于治疗高血压、心绞痛和心律失常等心血管疾病。它可以通过阻断肾上腺素对β受体的作用来降低心率和血压。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            454,
                            '酮色林',
                            '酮色林是一种质子泵抑制剂，常用于治疗胃溃疡、消化性溃疡和胃食管反流病等胃肠道疾病。它可以通过抑制胃酸的分泌来减轻胃部不适和促进溃疡的愈合。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            455,
                            '乌洛托品',
                            '乌洛托品是一种抗胆碱药物，常用于治疗消化性溃疡和冠状动脉缺血等疾病。它可以通过阻断胆碱对M受体的作用来减少胆汁分泌、降低内脏平滑肌张力和扩张冠状动脉。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            456,
                            '二氮嗪',
                            '二氮嗪是一种镇静剂和抗焦虑药，常用于治疗焦虑、失眠和癫痫等疾病。它可以通过影响中枢神经系统的GABA受体来产生镇静和抗焦虑作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            457,
                            '别嘌醇',
                            '别嘌醇是一种利尿剂和降压药，常用于治疗高血压、水肿和心力衰竭等疾病。它可以通过抑制肾脏中Na+/Cl-共转运体的作用来增强钠离子和水分的排泄。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            458,
                            '吩噻嗪类药物',
                            '吩噻嗪类药物是一种抗精神病药物，常用于治疗精神分裂症和双相情感障碍等精神疾病。它可以通过阻断多巴胺D2受体的作用来减轻精神症状。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            459,
                            '吲哚美辛',
                            '吲哚美辛是一种非甾体抗炎药，常用于缓解轻至中度疼痛和发热等症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            460,
                            '呋塞米',
                            '呋塞米是一种利尿剂，常用于治疗高血压、水肿和心力衰竭等疾病。它可以通过抑制肾脏中Na+/K+/2Cl-共转运体的作用来增强钠离子、氯离子和水分的排泄。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            461,
                            '多巴胺',
                            '多巴胺是一种神经递质和荷尔蒙，常用于治疗帕金森病和心源性休克等疾病。它可以通过影响中枢神经系统和末梢血管系统来产生抗震颤和扩张血管的作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            462,
                            '奥美沙坦',
                            '奥美沙坦是一种血管紧张素Ⅱ受体拮抗剂，常用于治疗高血压和心力衰竭等疾病。它可以通过阻断血管紧张素Ⅱ对受体的作用来降低血压和心脏负担。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            463,
                            '对乙酰氨基酚',
                            '对乙酰氨基酚是一种解热镇痛药，常用于缓解轻至中度的头痛、牙痛、关节痛、肌肉痛、感冒和发热等症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            464,
                            '巴比妥类药',
                            '巴比妥类药是一种镇静药和催眠药，常用于治疗焦虑、失眠、癫痫和痉挛等疾病。它可以通过增强GABA的作用来产生镇静和抗惊厥作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            465,
                            '托伐普坦',
                            '托伐普坦是一种抗血小板药物，常用于预防和治疗心血管疾病的血栓形成。它可以通过抑制血小板聚集和减少血栓的形成来降低心血管事件的发生率。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            466,
                            '抗痛风药',
                            '抗痛风药是一类用于治疗痛风和高尿酸血症的药物，包括利尿剂、NSAIDs、可乐定和别嘌醇等。它们可以通过不同的机制来减少关节炎症和尿酸水平。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            467,
                            '拟交感胺类药',
                            '拟交感胺类药是一类药物，常用于治疗哮喘、支气管痉挛和过敏性鼻炎等呼吸道疾病。它们可以通过模拟交感神经系统的作用来扩张支气管和减少分泌物的分泌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            468,
                            '氨苯蝶啶',
                            '氨苯蝶啶是一种非甾体抗炎药，常用于缓解轻至中度的头痛、牙痛、关节痛、肌肉痛和痛经等疼痛症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            469,
                            '氯化钠',
                            '氯化钠是一种常见的生理盐水，常用于静脉注射、口服、灌肠和皮下注射等途径。它可以用于补充体液、调节电解质平衡和维持细胞功能。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            470,
                            '洋地黄类药物、胺碘酮等',
                            '洋地黄类药物和胺碘酮是一类心血管药物，常用于治疗心脏疾病如心力衰竭和心律失常等。它们可以通过不同的机制来增强心脏收缩力和稳定心律。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            471,
                            '激动仅受体的拟肾上腺类药物',
                            '激动仅受体的拟肾上腺类药物是一类药物，常用于治疗哮喘、支气管痉挛和过敏性鼻炎等呼吸道疾病。它们可以通过模拟肾上腺素的作用来扩张支气管和减少分泌物的分泌。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            472,
                            '甲氧苄啶',
                            '甲氧苄啶是一种非甾体抗炎药，常用于缓解轻至中度的头痛、牙痛、关节痛、肌肉痛和痛经等疼痛症状。它可以通过抑制体内前列腺素的合成来减轻炎症和疼痛。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            473,
                            '碳酸氢钠',
                            '碳酸氢钠是一种常见的碱性药物，常用于治疗胃酸过多、代谢性酸中毒和尿路感染等疾病。它可以中和体内过多的酸性物质和增加尿液的pH值。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            474,
                            '福辛普利',
                            '福辛普利是一种血管紧张素转换酶抑制剂，常用于治疗高血压和心力衰竭等心血管疾病。它可以通过抑制血管紧张素Ⅰ转换为血管紧张素Ⅱ的作用来降低血压和心脏负担。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            475,
                            '维生素D',
                            '维生素D是一种脂溶性维生素，常用于预防和治疗骨质疏松症、佝偻病和肌无力等疾病。它可以促进钙的吸收和利用，调节钙磷代谢和维持骨骼健康。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            476,
                            '缬沙坦',
                            '缬沙坦是一种血管紧张素Ⅱ受体拮抗剂，常用于治疗高血压和心力衰竭等心血管疾病。它可以通过阻断血管紧张素Ⅱ对受体的作用来降低血压和心脏负担。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            477,
                            '羟丁酸钠',
                            '羟丁酸钠是一种抗癫痫药物，常用于治疗癫痫和其他抽搐性疾病。它可以通过增强GABA的作用来产生抗惊厥作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            478,
                            '肾上腺皮质激素',
                            '肾上腺皮质激素是一类内源性激素，常用于治疗多种炎症性和免疫相关疾病，如哮喘、风湿性关节炎、过敏反应和自身免疫疾病等。它们通过抑制炎症反应、减轻免疫系统过度活跃来发挥作用。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            479,
                            '促肾上腺皮质激素',
                            '促肾上腺皮质激素是一类药物，常用于治疗肾上腺功能不全和先天性肾上腺皮质增生症等疾病。它们可以通过刺激肾上腺皮质产生更多的肾上腺皮质激素来纠正激素缺乏的状态。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            480,
                            '雌激素',
                            '雌激素是一类女性激素，常用于治疗更年期综合征、骨质疏松症和乳腺癌等疾病。它们可以通过替代或补充体内缺乏的雌激素来维持正常的生理功能。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            481,
                            '两性霉素B',
                            '两性霉素B是一种抗真菌药物，常用于治疗严重的真菌感染，特别是对念珠菌属和曲霉菌属有效。它可以通过干扰真菌细胞壁的合成来抑制真菌的生长和繁殖。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            482,
                            '贝那普利',
                            '贝那普利是一种血管紧张素转换酶抑制剂，常用于治疗高血压和心力衰竭等心血管疾病。它可以通过抑制血管紧张素Ⅰ转换为血管紧张素Ⅱ的作用来降低血压和心脏负担。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            483,
                            '金刚烷胺',
                            '金刚烷胺是一种抗结核药物，常用于治疗结核病。它可以通过抑制结核菌的生长和繁殖来达到治疗效果。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            484,
                            'B肾上腺素受体拮抗药',
                            'B肾上腺素受体拮抗药是一类药物，常用于治疗高血压、心绞痛和心力衰竭等疾病。'
                        );

INSERT INTO drug_detail (
                            id,
                            name2,
                            details
                        )
                        VALUES (
                            485,
                            '锂制剂',
                            '锂制剂是一类药物，常用于治疗双相情感障碍（躁郁症）、抑郁症和部分精神疾病等。它们可以通过影响神经递质的代谢和释放来调节情绪和心理状态。'
                        );


-- 表：drug_interaction
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
                                 '黄体酮',
                                 '酮康唑',
                                 '减慢黄体酮在体内的代谢，从而增加黄体酮的生物利用度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 2,
                                 '黄体酮',
                                 '酮康唑',
                                 '减慢黄体酮在体内的代谢，从而增加黄体酮的生物利用度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 3,
                                 '丁螺环酮',
                                 'CYP3A4抑制药',
                                 '服用红霉素、咪唑类抗真菌药等CYP3A4抑制药后，再用本品可使其峰浓度升高，AUC增大'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 4,
                                 '丁螺环酮',
                                 'CYP3A4诱导药',
                                 '丁螺环酮的代谢加快，使其抗焦虑作用降低'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 5,
                                 '丁螺环酮',
                                 '乙醇和其他中枢抑制药',
                                 '可使中枢抑制作用增强'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 6,
                                 '丁螺环酮',
                                 '伊曲康唑',
                                 '伊曲康唑通过抑制CYP3A4而减少丁螺环酮的首过效应, 增加其生物利用度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 7,
                                 '丁螺环酮',
                                 '利福平',
                                 '利福平诱导CYP3A4而加快丁螺环酮的代谢, 但是对血浆中有活性的哌嗪代谢物没有显著性影响'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 8,
                                 '丁螺环酮',
                                 '单胺氧化酶抑制药',
                                 '可使血压升高'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 9,
                                 '丁螺环酮',
                                 '地尔硫?',
                                 '地尔硫萆抑制CYP3A4而减轻丁螺环酮的首过效应, 提高其生物利用度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 10,
                                 '丁螺环酮',
                                 '氟伏沙明',
                                 '氟伏沙明抑制丁螺环酮的代谢, 减少活性代谢物1-PP的血浆浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 11,
                                 '丁螺环酮',
                                 '特非那定',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 12,
                                 '丁螺环酮',
                                 '红霉素',
                                 '红霉素通过抑制CYP3A4而减少丁螺环酮的首过效应, 增加其生物利用度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 13,
                                 '丁螺环酮',
                                 '维拉帕米',
                                 '维拉帕米通过抑制CYP3A4而减轻丁螺环酮的首过效应, 提高其生物利用度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 14,
                                 '丁螺环酮',
                                 '葡萄柚汁',
                                 '丁螺环酮的首过效应明显, 葡萄柚汁可显著抑制肠道CYP3A4和P-gp, 显著增加丁螺环酮的生物利用度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 15,
                                 '三唑仑',
                                 '利托那韦',
                                 '利托那韦通过抑制CYP3A4而显著减少i唑仑的清除'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 16,
                                 '三唑仑',
                                 '噻加宾',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 17,
                                 '三唑仑',
                                 '地尔硫?',
                                 '地尔硫革显著抑制了三唑仑的代谢，增强其疗效'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 18,
                                 '三唑仑',
                                 '地高辛',
                                 '可增加地高辛血药浓度而致中毒'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 19,
                                 '三唑仑',
                                 '异烟肼',
                                 '抑制本品的消除，血药浓度增高'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 20,
                                 '三唑仑',
                                 '扑米酮',
                                 '由于减慢后者代谢，需调整扑米酮的用量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 21,
                                 '三唑仑',
                                 '抗高血压药和利尿降压药',
                                 '可使降压作用增强'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 22,
                                 '三唑仑',
                                 '氟康唑',
                                 '氟康唑通过抑制CYP3A4而显著减慢三唑仑的代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 23,
                                 '三唑仑',
                                 '特比萘芬',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 24,
                                 '三唑仑',
                                 '莫达非尼',
                                 '莫达非尼体内诱导肠道CYP3A4/5，对肝脏的CYP3A影响较小，增加了三唑仑的肠道首过效应，降低其生物利用度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 25,
                                 '三唑仑',
                                 '葡萄柚汁',
                                 '推测多次饮用葡萄柚汁更显著地抑制肠道和肝脏的CYP3A4，减慢三唑仑的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 26,
                                 '三唑仑',
                                 '西咪替丁、红霉素',
                                 '可抑制本品在肝脏的代谢，引起血药浓度升高，必要时减少药量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 27,
                                 '三唑仑',
                                 '西酞普兰',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 28,
                                 '三唑仑',
                                 '酒及全麻药、可乐定、镇痛药、吩噻嗪类、单胺氧化酶A型抑制药和三环类抗抑郁药',
                                 '可彼此增效，应调整用量。阿片类镇痛药的用量至少应减至1/3阿片类镇痛药的用量至少应减至1/3，而后按需逐渐增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 29,
                                 '三唑仑',
                                 '酮康唑',
                                 '酮康唑通过抑制三唑仑的肝脏首过效应而显著提高了其生物利用度，减慢三唑仑的代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 30,
                                 '三唑仑',
                                 '雷尼替丁',
                                 '推测雷尼替丁通过提高胃肠道pH而轻度增加对酸敏感的三唑仑的吸收'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 31,
                                 '三氟拉嗪',
                                 '长春碱',
                                 '三氟拉嗪并不能有效地逆转肿瘤细胞的耐药性'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 32,
                                 '丙泊酚',
                                 '罗库溴铵',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 33,
                                 '丙磺舒',
                                 '阿昔洛韦',
                                 '推测丙磺舒竞争性地抑制肾脏和肝脏的膜转运体而减慢阿昔洛韦的代谢清除。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 34,
                                 '乳糖酸红霉素',
                                 '丙吡胺',
                                 '可能会造成潜在的心血管并发症，谨慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 35,
                                 '乳糖酸红霉素',
                                 '他克莫司',
                                 '可使他克莫司血药浓度上升，谨慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 36,
                                 '乳糖酸红霉素',
                                 '华法林',
                                 '增加出血的危险性，避免合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 37,
                                 '乳糖酸红霉素',
                                 '卡马西平、丙戊酸',
                                 '导致后者血药浓度增高而发生毒性反应，谨慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 38,
                                 '乳糖酸红霉素',
                                 '咪达唑仑',
                                 '减少其清除而增强其作用，谨慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 39,
                                 '乳糖酸红霉素',
                                 '地高辛',
                                 '可使地高辛浓度升高较多，毒性增加，避免合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 40,
                                 '乳糖酸红霉素',
                                 '氯氮平',
                                 '导致氯氮平血药浓度升高，谨慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 41,
                                 '乳糖酸红霉素',
                                 '洛伐他丁',
                                 '可能引起横纹肌溶解，避免合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 42,
                                 '乳糖酸红霉素',
                                 '茶碱',
                                 '导致血清茶碱浓度升高和（或）毒性反应增加，谨慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 43,
                                 '乳糖酸红霉素',
                                 '西咪替丁',
                                 '导致红霉素血药浓度升高，听力损伤，谨慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 44,
                                 '乳糖酸红霉素',
                                 '麦角胺',
                                 '可导致出现麦角中毒症状，谨慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 45,
                                 '二甲双胍',
                                 '含碘造影剂',
                                 '造影前后48小时禁用二甲双胍'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 46,
                                 '二甲双胍',
                                 '头孢氨苄',
                                 '推测头孢氨苄与二甲双胍竞争肾脏排泄, 减慢二甲双胍的清除'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 47,
                                 '二甲双胍',
                                 '抗凝药',
                                 '加强抗凝药（如华法林等）的抗凝血倾向'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 48,
                                 '二甲双胍',
                                 '替诺福韦',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 49,
                                 '二甲双胍',
                                 '树脂类药物',
                                 '本品同服可减少本品在胃肠道的吸收'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 50,
                                 '二甲双胍',
                                 '溴丙胺太林',
                                 '二甲双胍主要在小肠吸收, 溴丙胺太林减慢胃肠蠕动, 有利于二甲双胍的吸收'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 51,
                                 '二甲双胍',
                                 '米格列醇',
                                 '药效学的协同作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 52,
                                 '二甲双胍',
                                 '西咪替丁',
                                 '增加本品的生物利用度，并减少其肾脏清除率，两者合用时可增加乳酸／丙酮酸比值，故应减少本品剂量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 53,
                                 '二甲双胍',
                                 '造影剂',
                                 '造影剂已经被证实可以导致严重的肾毒性, 特别是在老年患者群体, 因此可导致二甲双胍蓄积而诱发乳酸酸中毒'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 54,
                                 '二甲双胍',
                                 '食物',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 55,
                                 '人参',
                                 '咪达唑仑',
                                 '人参可能诱导肝脏和肠道的CYP3A活性而加快咪达唑仑的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 56,
                                 '他克莫司',
                                 '阿德福韦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 57,
                                 '他利克索',
                                 '多巴丝肼',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 58,
                                 '他喷他多',
                                 '阿司匹林',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 59,
                                 '他拉纳班',
                                 '芬特明',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 60,
                                 '他林洛尔',
                                 '银杏提取物',
                                 '推测银杏提取物多剂量给药能抑制P-gp而增加他林洛尔的生物利用度，但相互作用程度无临床意义。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 61,
                                 '他莫昔芬',
                                 '表柔比星',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 62,
                                 '他达拉非',
                                 '波生坦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 63,
                                 '伊立替康',
                                 '奥沙利铂',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 64,
                                 '伏格列波糖',
                                 '降血糖药物（如磺酰胺类及磺酰脲类药物、双胍类药物、胰岛素制剂、胰岛素增敏剂）',
                                 '发生低血糖的可能性，慎重地从低剂量开始给药'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 65,
                                 '伏立康唑',
                                 '阿芬太尼',
                                 '推测伏立康唑通过抑制CYP3A而显著减慢阿芬太尼的消\n除过程。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 66,
                                 '伐地那非',
                                 'CYP4503A4的诱导剂',
                                 '降低血浆西地那非水平'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 67,
                                 '伐地那非',
                                 'Ⅲ类抗心律失常药或拉帕替尼、尼罗替尼、美沙酮、雷诺嗪',
                                 'Q-T间期延长的作用叠加，出现Q-T间期延长的风险增加，应避免'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 68,
                                 '伐地那非',
                                 '乙醇',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 69,
                                 '伐地那非',
                                 '二氢可待因',
                                 '出现阴茎持续勃起的风险增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 70,
                                 '伐地那非',
                                 '哌唑嗪、坦洛新、阿夫唑嗪、多沙唑嗪等仅受体拮抗药',
                                 '可发生症状性低血压'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 71,
                                 '伐地那非',
                                 '坦索罗辛',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 72,
                                 '伐地那非',
                                 '硝酸酯类药物',
                                 '服用硝酸酯类药物的患者，禁服本品（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 73,
                                 '伐地那非',
                                 '细胞色素P4503A4抑制剂',
                                 '本品血浆水平升高'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 74,
                                 '伐地那非',
                                 '葡萄柚汁',
                                 '西地那非的生物利用度增加，吸收延迟'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 75,
                                 '伐地那非',
                                 '西咪替丁',
                                 '本品血浆水平升高'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 76,
                                 '伐昔洛韦',
                                 '丙磺舒',
                                 '与丙磺舒竞争性抑制有机酸分泌，合并用丙磺舒可使本品的排泄减慢，半衰期延长，体内药物量蓄积'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 77,
                                 '伐昔洛韦',
                                 '干扰素或甲氨蝶呤（鞘内）',
                                 '引起精神异常，应慎合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 78,
                                 '伐昔洛韦',
                                 '西咪替丁',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 79,
                                 '伐昔洛韦',
                                 '齐多夫定',
                                 '引起肾毒性，表现为深度昏睡和疲劳'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 80,
                                 '克拉霉素',
                                 '西沙必利、匹莫齐特',
                                 '升高后者血浓度，导致Q-T间期延长，心律失常'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 81,
                                 '克拉霉素',
                                 '阿司咪唑、华法林、麦角生物碱、三唑仑、咪达唑仑、环孢素、奥美拉唑、雷尼替丁、苯妥因、溴隐亭、阿芬他尼、海索比妥、丙吡胺、洛伐他丁、他克莫司',
                                 '升高药物的血清浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 82,
                                 '克拉霉素',
                                 '齐多夫定',
                                 '本品会干扰后者的吸收使其稳态血浓度下降，应错开服用时间'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 83,
                                 '别嘌醇',
                                 '阿利吉仑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 84,
                                 '华法林',
                                 '花粉',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 85,
                                 '华法林',
                                 '银杏',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 86,
                                 '华法林',
                                 '鱼油',
                                 'ω-3脂肪酸能降低血小板内的血栓素A2水平，影响维生素K依赖的凝血因子的活性，降低因子Ⅶ的水平，而增强华法林的抗凝活性。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 87,
                                 '卡培他滨',
                                 '溴夫定',
                                 '溴夫定在体内代谢为二氢溴乙烯尿嘧啶，与DPD不可逆地结合而失活，导致体内卡培他滨代谢为氟尿嘧啶后的代谢受阻，导致氟尿嘧啶的骨髓抑制和胃肠道毒性。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 88,
                                 '卡维地洛',
                                 '利福平、利福布丁等肝药酶诱导药',
                                 '可诱导本药的代谢，从而减弱本药的作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 89,
                                 '卡维地洛',
                                 '多柔比星',
                                 '卡维地洛抑制P-gp减弱肿瘤细胞对多柔比星的耐药性。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 90,
                                 '卡维地洛',
                                 '氟西汀',
                                 '氟西汀立体选择性地影响了卡维地洛的代谢，但是没有达到有临床意义的相互作用水平。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 91,
                                 '卡维地洛',
                                 '肾上腺素',
                                 '本药能拮抗肾上腺素的β效应，从而引起心搏徐缓并拮抗肾上腺素的过敏反应'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 92,
                                 '卡维地洛',
                                 '芬太尼',
                                 '可产生严重的低血压'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 93,
                                 '卡维地洛',
                                 '苯丙香豆素',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 94,
                                 '卡维地洛',
                                 '莫索尼定',
                                 '可能出现反跳性高血压'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 95,
                                 '卡维地洛',
                                 '西咪替丁',
                                 '能减少本品经肝代谢，延迟其消除并提高其血浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 96,
                                 '厄洛替尼',
                                 'CYP3 A4强诱导药',
                                 '可提高本品的代谢，显著降低本品的血药浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 97,
                                 '厄洛替尼',
                                 '奥美拉唑',
                                 '暴露量和最大血药浓度分别降低了46%和61%。血药浓度达峰时间或半衰期无变化'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 98,
                                 '厄洛替尼',
                                 '烟草',
                                 '可能会降低本品的血药浓度，建议吸烟者戒烟'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 99,
                                 '去氨加压素',
                                 '三环类抗抑郁药、氯丙嗪、卡马西平',
                                 '增加其抗利尿作用并有引起水潴留的危险'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 100,
                                 '去氨加压素',
                                 '依替巴肽',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 101,
                                 '去氨加压素',
                                 '吡罗昔康',
                                 '推测吡罗昔康通过抑制前列腺素，导致去氨加压素的血管活性存在性别差异。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 102,
                                 '去氨加压素',
                                 '吲哚美辛、辛伐他汀',
                                 '可增强患者对本药的反应，但不会影响本药作用的持续时间'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 103,
                                 '去氨加压素',
                                 '红霉素',
                                 '推测红霉素加快胃肠蠕动，降低去氨加压素的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 104,
                                 '去氨加压素',
                                 '食物',
                                 '食物轻度影响去氨加压素的吸收速度和程度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 105,
                                 '双丙戊酸',
                                 '利培酮',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 106,
                                 '双嘧达莫',
                                 '氟尿嘧啶',
                                 '可能存在药效学的相加或协同作用。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 107,
                                 '双氯芬酸',
                                 '伏立康唑',
                                 '推测伏立康唑通过抑制CYP2C9而减少双氯芬酸的首过效应。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 108,
                                 '双氯芬酸',
                                 '保钾利尿药',
                                 '可引起高钾血症'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 109,
                                 '双氯芬酸',
                                 '可待因',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 110,
                                 '双氯芬酸',
                                 '地高辛',
                                 '同用时需调整地高辛的剂量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 111,
                                 '双氯芬酸',
                                 '奥美拉唑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 112,
                                 '双氯芬酸',
                                 '抗高血压药',
                                 '可影响降压效果'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 113,
                                 '双氯芬酸',
                                 '泮托拉唑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 114,
                                 '双氯芬酸',
                                 '甲氨蝶呤',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 115,
                                 '双氯芬酸',
                                 '硫糖铝',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 116,
                                 '双氯芬酸',
                                 '阿莫西林',
                                 '推测双氯芬酸可促进阿莫西林的肾脏清除。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 117,
                                 '双氯芬酸',
                                 '降糖药',
                                 '可影响降糖的疗效，故需慎重考虑'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 118,
                                 '双氯芬酸',
                                 '雷尼替丁',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 119,
                                 '司来吉兰',
                                 '其他单胺氧化酶抑制药',
                                 '禁止合用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 120,
                                 '司来吉兰',
                                 '卡马西平、奥卡西平',
                                 '司来吉兰血药浓度上升，可导致高热、癫痫发作等，属禁忌（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 121,
                                 '司来吉兰',
                                 '哌替啶、曲马多、美沙酮、右丙氧芬或右美沙芬、安非他酮',
                                 '禁止合用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 122,
                                 '司来吉兰',
                                 '氟哌利多',
                                 '出现心脏毒性（Q-T间期延长、尖端扭转型室性心动过速、心脏停搏）的风险增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 123,
                                 '司来吉兰',
                                 '米那普仑',
                                 '可出现中枢神经系统毒性或5-HT综合征'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 124,
                                 '司来吉兰',
                                 '肾上腺素β受体激动药',
                                 '出现兴奋、心动过速、轻度躁狂的风险增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 125,
                                 '司来吉兰',
                                 '胍乙啶',
                                 '拮抗了胍乙啶的抗高血压作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 126,
                                 '司来吉兰',
                                 '色氨酸',
                                 '中枢神经系统的兴奋作刚增加，可出现妄想和5-HT综合征'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 127,
                                 '司来吉兰',
                                 '苯丙胺或间羟胺',
                                 '可出现高血压危象和5-HT综合征'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 128,
                                 '司来吉兰',
                                 '赛庚啶',
                                 '禁忌二者合用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 129,
                                 '司来吉兰',
                                 '酪氨酸、甲基多巴、哌甲酯',
                                 '可出现高血压危象（头痛、心悸、颈强直），属禁忌（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 130,
                                 '司来吉兰',
                                 '雌二醇/左炔诺孕酮',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 131,
                                 '司来吉兰',
                                 '马普替林',
                                 '可出现神经毒性和癫痫发作，属禁忌（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 132,
                                 '吉非替尼',
                                 '利福平',
                                 '本品的平均AUC降低'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 133,
                                 '吉非贝齐',
                                 '他汀类',
                                 '可引起横纹肌溶解症，使肌酸磷酸激酶血浓度增高，肌球蛋白尿而致急性肾功能衰竭'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 134,
                                 '吉非贝齐',
                                 '依折麦布',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 135,
                                 '吉非贝齐',
                                 '口服抗凝药',
                                 '明显增加抗凝作用，故需经常测定凝血酶原时间以调整抗凝药剂量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 136,
                                 '吉非贝齐',
                                 '孟鲁司特',
                                 '吉非贝齐及其代谢物吉非贝齐1-O-β-葡萄糖醛酸苷显著抑制孟鲁司特的代谢(部分经由CYP2C8)。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 137,
                                 '吉非贝齐',
                                 '瑞格列奈',
                                 '吉非贝齐及其代谢物能显著抑制瑞格列奈经CYP2C8的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 138,
                                 '吉非贝齐',
                                 '瑞舒伐他汀',
                                 '瑞舒伐他汀是OATP2( OATP1B1)的底物，吉非贝齐抑制OATP2降低肝脏对瑞舒伐他汀的主动摄取。同时，吉非贝齐及其代谢物可能通过抑制UGT而减慢瑞舒伐他汀的Ⅱ相代谢过程。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 139,
                                 '吉非贝齐',
                                 '考来替泊',
                                 '考来替泊的非选择性吸附作用降低吉非贝齐的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 140,
                                 '呋喃妥因',
                                 '丙磺舒和苯磺唑酮',
                                 '血药浓度增高和（或）血清半衰期延长'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 141,
                                 '呋喃硫胺',
                                 '碱性药物如碳酸氢钠、枸橼酸钠',
                                 '配伍易引起变质'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 142,
                                 '咖啡因',
                                 '异烟肼、甲丙氨酯',
                                 '能促使咖啡因增效，提高后者脑组织内浓度55%，肝和肾内浓度则有所下降'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 143,
                                 '噻奈普汀钠',
                                 '水杨酸',
                                 '可以降低本药的蛋白结合率，故同时服用高剂量水杨酸时，推荐减少本药的用量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 144,
                                 '噻氯匹定',
                                 '二氢麦角碱',
                                 '推测二氢麦角碱通过抑制OATP-B而降低噻氯匹定的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 145,
                                 '噻氯匹定',
                                 '地高辛',
                                 '使后者血药浓度轻度下降（约15%），但一般不会影响地高辛的临床疗效'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 146,
                                 '噻氯匹定',
                                 '环孢素',
                                 '偶见报道本品可降低环孢素的血药浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 147,
                                 '噻氯匹定',
                                 '茶碱',
                                 '可使茶碱血药浓度升高并有过量的危险，故用本品期间及之后应调整茶碱用量，必要时进行茶碱血药浓度监测'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 148,
                                 '噻氯匹定',
                                 '血小板聚集抑制药、溶栓药及导致低凝血酶原血症或血小板减少的药物',
                                 '均可加重出血的危险。若临床确有必要联合用药，应密切观察并进行实验室监测'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 149,
                                 '噻氯匹定',
                                 '西拉非班',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 150,
                                 '噻氯匹定',
                                 '银杏提取物',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 151,
                                 '圣约翰草提取物',
                                 '他克莫司',
                                 '圣约翰草提取物通过诱导CYP3A和（或）P-gp而加快他克莫司的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 152,
                                 '圣约翰草提取物',
                                 '他林洛尔',
                                 '他林洛尔是体内不被代谢的P-gp探针底物，圣约翰草提取物诱导肠道的P-gp而降低他林洛尔的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 153,
                                 '圣约翰草提取物',
                                 '伊立替康',
                                 '圣约翰草提取物诱导CYP3A4,加快伊立替康及其代谢物SN-38的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 154,
                                 '圣约翰草提取物',
                                 '伊马替尼',
                                 '伊马替尼体内经CYP3A4代谢，圣约翰草提取物诱导和加快伊马替尼的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 155,
                                 '圣约翰草提取物',
                                 '华法林',
                                 '华法林的代谢情况复杂，可通过CYP2C9(S-华法林)、CYP2C19(R-华法林)、CYP1A2(R-华法林)和CYP3A4代谢，圣约翰草提取物通过诱导CYP3A4，可能影响华法林的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 156,
                                 '圣约翰草提取物',
                                 '口服避孕药',
                                 '推测圣约翰草提取物通过诱导CYP3A而加快口服避孕药的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 157,
                                 '圣约翰草提取物',
                                 '地高辛',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 158,
                                 '圣约翰草提取物',
                                 '布洛芬',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 159,
                                 '圣约翰草提取物',
                                 '泼尼松',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 160,
                                 '圣约翰草提取物',
                                 '环孢素',
                                 '圣约翰草提取物中的贯叶金丝桃素诱导CYP3A4和（或）P-gp而加快环孢素的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 161,
                                 '圣约翰草提取物',
                                 '瑞格列奈',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 162,
                                 '圣约翰草提取物',
                                 '蛋白酶抑制剂',
                                 '圣约翰草提取物可能会降低蛋白酶抑制剂的血药浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 163,
                                 '地昔帕明',
                                 '卡马西平',
                                 '抑制本品代谢，毒性升高（谨慎）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 164,
                                 '地昔帕明',
                                 '吗啡',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 165,
                                 '地昔帕明',
                                 '奈法唑酮',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 166,
                                 '地昔帕明',
                                 '帕罗西汀',
                                 '帕罗西汀通过抑制CYP2D6而显著减慢地昔帕明的代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 167,
                                 '地昔帕明',
                                 '硫利达嗪',
                                 '抑制本品代谢，毒性升高（谨慎）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 168,
                                 '地昔帕明',
                                 '胍乙啶',
                                 '禁忌合用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 169,
                                 '地昔帕明',
                                 '西那卡塞',
                                 '体外研究显示西那卡塞是CYP2D6强抑制剂, 显著减慢地昔帕明的代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 170,
                                 '坦索罗辛',
                                 '茶碱',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 171,
                                 '塞克硝唑',
                                 '乙醇',
                                 '不宜合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 172,
                                 '塞克硝唑',
                                 '双硫仑',
                                 '不宜合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 173,
                                 '塞曲司特',
                                 '导致溶血性贫血性质的药物',
                                 '导致溶血性贫血发生的危险性大大升高，因此在药物合用时需仔细观察，一旦发现异常症状，应立即停药并采取适当措施'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 174,
                                 '塞替派',
                                 '尿激酶',
                                 '可增加塞替派治疗膀胱癌的疗效'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 175,
                                 '塞替派',
                                 '放疗',
                                 '应适当调整剂量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 176,
                                 '塞替派',
                                 '琥珀胆碱',
                                 '可使呼吸暂停延长，在接受塞替派治疗的患者，应用琥珀胆碱前必须测定血中胆碱酯酶水平'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 177,
                                 '塞来昔布',
                                 'CYP2C9抑制剂',
                                 '升高本品血药浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 178,
                                 '塞来昔布',
                                 'β受体拮抗药、抗精神病药',
                                 '可升高这些药物血药浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 179,
                                 '塞来昔布',
                                 '华法林',
                                 '推测塞来昔布抑制了CYP2C9而减慢了华法林的代谢，但是由于存在CYP2C9基因多态性，S-华法林的代谓+受CYP2C9慢代谢型的影响程度更大'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 180,
                                 '塞来昔布',
                                 '吉西他滨',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 181,
                                 '塞来昔布',
                                 '氯吡格雷',
                                 '氯吡格雷和塞来昔布可能存在竞争CYP2C9代谢而导致出血风险。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 182,
                                 '塞来昔布',
                                 '美托洛尔',
                                 '推测塞来昔布抑制CYP2D6，减慢了美托洛尔的代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 183,
                                 '塞来昔布',
                                 '苯妥英',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 184,
                                 '塞来昔布',
                                 '阿利吉仑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 185,
                                 '塞美司他',
                                 '食物',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 186,
                                 '多沙唑嗪',
                                 'β受体拮抗药、利尿药、ACEI、钙通道阻滞药',
                                 '降压作用增强'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 187,
                                 '多沙唑嗪',
                                 '他达拉非',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 188,
                                 '多沙唑嗪',
                                 '吲哚美辛或其他非甾体抗炎药',
                                 '减弱降压作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 189,
                                 '多沙唑嗪',
                                 '拟交感胺类',
                                 '与本品合用可使前者升压作用与本品降压作用均减弱'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 190,
                                 '多沙唑嗪',
                                 '硝苯地平',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 191,
                                 '多沙唑嗪',
                                 '西咪替丁',
                                 '轻度增加多沙唑嗪血药浓度和半衰期，但其临床意义不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 192,
                                 '多沙唑嗪',
                                 '雌激素',
                                 '与本品合用时由于体液潴留而增高血压'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 193,
                                 '多沙唑嗪',
                                 '非那雄胺',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 194,
                                 '多潘立酮',
                                 'H2受体拮抗药',
                                 '减少多潘立酮在胃肠道的吸收'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 195,
                                 '多潘立酮',
                                 '对乙酰氨基酚、氨苄西林、左旋多巴、四环素等',
                                 '增加吸收率'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 196,
                                 '多潘立酮',
                                 '抗酸药和抑制胃酸分泌的药物',
                                 '可降低本品的生物利用度，不宜与本品同服'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 197,
                                 '多潘立酮',
                                 '溴隐亭',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 198,
                                 '多潘立酮',
                                 '米氮平',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 199,
                                 '多潘立酮',
                                 '酮康唑',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 200,
                                 '夫罗曲坦',
                                 '其他5 - HTID受体激动剂',
                                 '避免合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 201,
                                 '夫西地酸钠',
                                 '香豆素',
                                 '增加抗凝作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 202,
                                 '头孢丙烯',
                                 '呋塞米、依他尼酸、布美他尼等强利尿药，卡氮芥、链佐星等抗肿瘤药及氨基糖苷类抗生素',
                                 '合用有增加肾毒性的可能'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 203,
                                 '奥利司他',
                                 '环孢素',
                                 '奥利司他可能通过减少环孢素的吸收而导致血药浓度降低。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 204,
                                 '奥卡西平',
                                 '拉莫三嗪',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 205,
                                 '奥卡西平',
                                 '皮质醇',
                                 '奥卡西平通过诱导CYP3A4而加快了内源性皮质醇的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 206,
                                 '奥氮平',
                                 'CYPIA2抑制药',
                                 '可显著地抑制本品代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 207,
                                 '奥氮平',
                                 '其他作用于中枢神经系统的药物及乙醇',
                                 '谨慎'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 208,
                                 '奥氮平',
                                 '卡马西平',
                                 '可增加本药的廓清率'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 209,
                                 '奥氮平',
                                 '可引起Q-T间期延长的药物',
                                 '忌用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 210,
                                 '奥氮平',
                                 '氟西汀',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 211,
                                 '对乙酰氨基酚',
                                 '丙磺舒',
                                 '推测丙磺舒通过抑制对乙酰氨基酚的葡萄糖醛酸结合减慢了其清除率'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 212,
                                 '对乙酰氨基酚',
                                 '兰索拉唑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 213,
                                 '对乙酰氨基酚',
                                 '卡马西平',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 214,
                                 '对乙酰氨基酚',
                                 '双氯芬酸',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 215,
                                 '对乙酰氨基酚',
                                 '吗啡',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 216,
                                 '对乙酰氨基酚',
                                 '尼扎替丁',
                                 '尼扎替丁可能通过抑制对乙酰氨基酚的葡萄糖醛酸结合, 轻度影响其药动学过程'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 217,
                                 '对乙酰氨基酚',
                                 '巴比妥类（如苯巴比妥）或解痉药（如颠茄）',
                                 '应用巴比妥类（如苯巴比妥）或解痉药（如颠茄）的患者，长期应用本品可致肝损害。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 218,
                                 '对乙酰氨基酚',
                                 '帕瑞考昔',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 219,
                                 '对乙酰氨基酚',
                                 '异烟肼',
                                 '异烟肼诱导CYP2E1加快对乙酰氨基酚的代谢, 导致毒性代谢物升高而产生肝毒性'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 220,
                                 '对乙酰氨基酚',
                                 '抗凝药',
                                 '大量或长期应用本品时，抗凝药的用量应根据凝血酶原时间进行调整'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 221,
                                 '对乙酰氨基酚',
                                 '普兰林肽',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 222,
                                 '对乙酰氨基酚',
                                 '曲马多',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 223,
                                 '对乙酰氨基酚',
                                 '替米沙坦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 224,
                                 '对乙酰氨基酚',
                                 '氯霉素',
                                 '可延长后者的生物半衰期，增强其毒性'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 225,
                                 '对乙酰氨基酚',
                                 '环丙沙星',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 226,
                                 '对乙酰氨基酚',
                                 '罗非昔布',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 227,
                                 '对乙酰氨基酚',
                                 '苯丙香豆素',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 228,
                                 '对乙酰氨基酚',
                                 '苯妥英',
                                 '推测苯妥英诱导了对乙酰氨基酚的代谢, 导致有肝脏毒性的代谢物在短时间达到高浓度而加重肝损伤'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 229,
                                 '对乙酰氨基酚',
                                 '酮咯酸',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 230,
                                 '对乙酰氨基酚',
                                 '阿司匹林、其他水杨酸盐制剂或其他非甾体类抗炎药',
                                 '明显增加肾毒性，避免合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 231,
                                 '对乙酰氨基酚',
                                 '齐多夫定',
                                 '增加毒性，因此应避免同时应用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 232,
                                 '对氨基水杨酸钠',
                                 '丙磺舒、苯磺唑酮',
                                 '导致本品的血药浓度增高和持续时间延长及毒性反应发生，剂量应予适当调整'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 233,
                                 '对氨基水杨酸钠',
                                 '乙硫异烟胺',
                                 '增加不良反应'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 234,
                                 '对氨基水杨酸钠',
                                 '利福平',
                                 '导致利福平的血药浓度降低，在服用上述两药时，至少相隔6小时'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 235,
                                 '对氨基水杨酸钠',
                                 '抗凝药（香豆素或茚满二酮衍生物）',
                                 '增强抗凝药（香豆素或茚满二酮衍生物）的作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 236,
                                 '对氨基水杨酸钠',
                                 '维生素B12',
                                 '服用氨基水杨酸类的患者其维生素B12的需要量可能增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 237,
                                 '庆大霉素',
                                 '呋塞米、红霉素',
                                 '增加耳毒性（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 238,
                                 '庆大霉素',
                                 '多黏菌素B',
                                 '增加耳毒性、肾毒性、神经肌肉阻滞作用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 239,
                                 '庆大霉素',
                                 '头孢菌素类',
                                 '增加肾毒性（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 240,
                                 '庆大霉素',
                                 '扎西他滨',
                                 '减少扎西他滨的肾脏排泄'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 241,
                                 '庆大霉素',
                                 '碳酸氢钠等尿碱化药',
                                 '增加肾毒性（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 242,
                                 '庆大霉素',
                                 '羧苄西林',
                                 '混合后本品分解（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 243,
                                 '庆大霉素',
                                 '肌松药、地西泮',
                                 '增加神经肌肉阻滞作用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 244,
                                 '拉西地平',
                                 '普萘洛尔',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 245,
                                 '普罗布考',
                                 '降糖药',
                                 '能加强降糖药的作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 246,
                                 '普罗布考',
                                 '香豆素类药物',
                                 '加强抗凝血作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 247,
                                 '普萘洛尔',
                                 '东革阿里水提物',
                                 '推测东革阿里水提物减少普萘洛尔的吸收。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 248,
                                 '普萘洛尔',
                                 '可乐定',
                                 '与可乐定同用而需停药时，需先停用本品，数天后再逐步减停可乐定，以免血压波动'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 249,
                                 '普萘洛尔',
                                 '地尔硫?',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 250,
                                 '普萘洛尔',
                                 '安替比林、利多卡因',
                                 '本品同用使本品清除减慢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 251,
                                 '普萘洛尔',
                                 '氢氧化铝凝胶',
                                 '显著减少普萘洛尔从小肠吸收'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 252,
                                 '普萘洛尔',
                                 '氯丙嗪',
                                 '可使两者的血药浓度均增高'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 253,
                                 '普萘洛尔',
                                 '肾上腺素、西咪替丁、可乐定、胰岛素',
                                 '禁忌合用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 254,
                                 '普萘洛尔',
                                 '西咪替丁',
                                 '能减少本品经肝代谢，延迟其消除并提高其血浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 255,
                                 '普萘洛尔',
                                 '钙通道阻滞剂',
                                 '特别是静脉给予维拉帕米，要十分警惕对心肌和房室传导的抑制，尤其对严重心肌病、心衰或新近心肌梗死者'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 256,
                                 '普萘洛尔',
                                 '非甾体类抗炎药',
                                 '可以减弱本品的降压作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 257,
                                 '曲唑酮',
                                 '5 - HT能神经功能的药物',
                                 '可引起5 - HT综合征'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 258,
                                 '曲唑酮',
                                 'CYP3 A4抑制药',
                                 '曲唑酮血药浓度升高'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 259,
                                 '曲唑酮',
                                 '乙醇和中枢抑制药',
                                 '可增强乙醇和中枢抑制药的中枢抑制作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 260,
                                 '曲唑酮',
                                 '利托那韦',
                                 '利托那韦通过抑制CYP3A4而显著减慢曲唑酮的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 261,
                                 '曲唑酮',
                                 '单胺氧化酶抑制药',
                                 '可能会导致严重不良反应'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 262,
                                 '曲唑酮',
                                 '卡马西平',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 263,
                                 '曲唑酮',
                                 '吩噻嗪类抗精神病药',
                                 '降压作用叠加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 264,
                                 '曲唑酮',
                                 '氟西汀',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 265,
                                 '曲普瑞林',
                                 '促进泌乳素分泌的药物',
                                 '导致本药的作用降低'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 266,
                                 '曲普瑞林',
                                 '维拉必利',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 267,
                                 '替尼泊苷',
                                 '甲苯磺丁脲、水杨酸钠、磺胺甲噻二唑',
                                 '导致游离药物增加，增加药物作用和毒性反应'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 268,
                                 '替普瑞酮',
                                 'H2受体拮抗剂',
                                 '合用能够提高疗效'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 269,
                                 '替硝唑',
                                 '华法林',
                                 '加强它们的作用，引起凝血酶原时间延长'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 270,
                                 '替马西泮',
                                 '丙磺舒',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 271,
                                 '氟伏沙明',
                                 '阿米替林',
                                 '推测氟伙沙明减慢阿米替林的代谢而导致去甲替林的血\n浆浓度降低。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 272,
                                 '氟康唑',
                                 '阿芬太尼',
                                 '氟康唑通过抑制CYP3A而减慢阿芬太尼的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 273,
                                 '氟比洛芬',
                                 '甲氨蝶呤',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 274,
                                 '氟比洛芬酯',
                                 '洛美沙星、诺氟沙星、依洛沙星',
                                 '导致抽搐发生的可能，禁止合用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 275,
                                 '氟胞嘧啶',
                                 '阿糖胞苷',
                                 '通过竞争抑制灭活本品的抗真菌活性'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 276,
                                 '氟膦丙胺',
                                 '食物',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 277,
                                 '氢氧化铝',
                                 '四环素类',
                                 '避免合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 278,
                                 '氢氧化铝',
                                 '地高辛、华法林、双香豆素、奎宁、奎尼丁、氯丙嗪、普萘洛尔、吲哚美辛、异烟肼、维生素及巴比妥类',
                                 '使这些药物的疗效受到影响，应尽量避免同时使用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 279,
                                 '氢氧化铝',
                                 '奎尼丁',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 280,
                                 '氢氧化铝',
                                 '枸橼酸钙',
                                 '枸橼酸钙能显著增加抗酸药中铝的吸收。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 281,
                                 '氢氧化铝',
                                 '格列吡嗪',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 282,
                                 '氢氧化铝',
                                 '牛奶',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 283,
                                 '氢氧化铝',
                                 '疫苗',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 284,
                                 '氢氧化铝',
                                 '西咪替丁、雷尼替丁',
                                 '可使后者吸收减少，一般不提倡两药在l小时内同用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 285,
                                 '氢氧化铝/氢氧化镁',
                                 '伊曲康唑',
                                 '氢氧化铝/氢氧化镁复方制剂能显著影响伊曲康唑的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 286,
                                 '氢氧化铝/氢氧化镁',
                                 '伐昔洛韦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 287,
                                 '氢氧化铝/氢氧化镁',
                                 '利伐沙班',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 288,
                                 '氢氧化铝/氢氧化镁',
                                 '利奈唑胺',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 289,
                                 '氢氧化铝/氢氧化镁',
                                 '司帕沙星',
                                 '氢氧化铝和氢氧化镁复方制剂可降低司帕沙星的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 290,
                                 '氢氧化铝/氢氧化镁',
                                 '吉米沙星',
                                 '氢氧化铝和氢氧化镁复方制剂可降低吉米沙星的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 291,
                                 '氢氧化铝/氢氧化镁',
                                 '呋山那韦',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 292,
                                 '氢氧化铝/氢氧化镁',
                                 '头孢布烯',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 293,
                                 '氢氧化铝/氢氧化镁',
                                 '头孢泊肟',
                                 '氢氧化铝和氢氧化镁混合制剂显著降低头孢泊肟的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 294,
                                 '氢氧化铝/氢氧化镁',
                                 '左甲状腺素',
                                 '体外研究显示氢氧化铝/氢氧化镁可剂量依赖性地减少左甲状腺素的吸收。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 295,
                                 '氢氧化铝/氢氧化镁',
                                 '替尼达普',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 296,
                                 '氢氧化铝/氢氧化镁',
                                 '瑞舒伐他汀',
                                 '氢氧化铝和氢氧化镁混合制剂能显著降低瑞舒伐他汀的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 297,
                                 '氢氧化铝/氢氧化镁',
                                 '索他洛尔',
                                 '同时合用氢氧化铝/氢氧化镁复方制剂可降低口服索他洛尔的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 298,
                                 '氢氧化铝/氢氧化镁',
                                 '舍吲哚',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 299,
                                 '氢氧化铝/氢氧化镁',
                                 '苯妥英',
                                 '氢氧化铝/氢氧化镁复方制剂可降低苯妥英的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 300,
                                 '氢氧化铝/氢氧化镁',
                                 '西洛司特',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 301,
                                 '氢氧化铝/氢氧化镁',
                                 '阿奇霉素',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 302,
                                 '氢氧化铝/氢氧化镁',
                                 '齐拉西酮',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 303,
                                 '氢氧化镁/氢氧化铝',
                                 '齐拉西酮',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 304,
                                 '氢氯噻嗪',
                                 'B肾上腺素受体拮抗药',
                                 '可使其升高血脂、血尿酸和血糖的作用增强'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 305,
                                 '氢氯噻嗪',
                                 '三氧化二砷、氟哌利多、氟卡尼、左醋美沙多、索他洛尔、酮色林',
                                 '本品可引发低钾或低镁血症，从而可诱发室性心律失常或Q-T间期延长'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 306,
                                 '氢氯噻嗪',
                                 '乌洛托品',
                                 '其转化为甲醛受抑制，疗效下降'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 307,
                                 '氢氯噻嗪',
                                 '二氮嗪',
                                 '可使血糖升高作用增强'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 308,
                                 '氢氯噻嗪',
                                 '别嘌醇',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 309,
                                 '氢氯噻嗪',
                                 '卡马西平',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 310,
                                 '氢氯噻嗪',
                                 '双氯芬酸',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 311,
                                 '氢氯噻嗪',
                                 '吡罗昔康',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 312,
                                 '氢氯噻嗪',
                                 '吩噻嗪类药物',
                                 '可导致严重的低血压或休克'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 313,
                                 '氢氯噻嗪',
                                 '吲哚美辛',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 314,
                                 '氢氯噻嗪',
                                 '呋塞米',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 315,
                                 '氢氯噻嗪',
                                 '地尔硫?',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 316,
                                 '氢氯噻嗪',
                                 '多巴胺',
                                 '利尿作用加强'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 317,
                                 '氢氯噻嗪',
                                 '奥美沙坦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 318,
                                 '氢氯噻嗪',
                                 '对乙酰氨基酚',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 319,
                                 '氢氯噻嗪',
                                 '巴比妥类药',
                                 '可导致直立性低血压'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 320,
                                 '氢氯噻嗪',
                                 '布洛芬',
                                 '推测布洛芬等NSAIDs通过水钠潴留影响氢氯噻嗪的降压作用。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 321,
                                 '氢氯噻嗪',
                                 '托伐普坦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 322,
                                 '氢氯噻嗪',
                                 '抗凝药',
                                 '使抗凝药作用减弱'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 323,
                                 '氢氯噻嗪',
                                 '抗痛风药',
                                 '抗痛风药应调整剂量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 324,
                                 '氢氯噻嗪',
                                 '拟交感胺类药',
                                 '利尿作用减弱'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 325,
                                 '氢氯噻嗪',
                                 '氨苯蝶啶',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 326,
                                 '氢氯噻嗪',
                                 '氯化钠',
                                 '过多输入氯化钠溶液可抵消本药的降压利尿作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 327,
                                 '氢氯噻嗪',
                                 '洋地黄类药物、胺碘酮等',
                                 '与本药合用时，应慎防因低钾血症引起的副作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 328,
                                 '氢氯噻嗪',
                                 '溴丙胺太林',
                                 '可明显增加本药的胃肠道吸收'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 329,
                                 '氢氯噻嗪',
                                 '激动仅受体的拟肾上腺类药物',
                                 '利尿作用减弱'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 330,
                                 '氢氯噻嗪',
                                 '甲氧苄啶',
                                 '易发生低钠血症'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 331,
                                 '氢氯噻嗪',
                                 '碳酸氢钠',
                                 '发生低氯性碱中毒机会增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 332,
                                 '氢氯噻嗪',
                                 '福辛普利',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 333,
                                 '氢氯噻嗪',
                                 '维生素D',
                                 '需注意高血钙'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 334,
                                 '氢氯噻嗪',
                                 '缬沙坦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 335,
                                 '氢氯噻嗪',
                                 '羟丁酸钠',
                                 '给予静脉麻醉药羟丁酸钠可致严重低钾血症'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 336,
                                 '氢氯噻嗪',
                                 '肾上腺皮质激素、促肾上腺皮质激素、雌激素、两性霉素B（静脉用药）',
                                 '能降低本药的利尿作用，增加发生电解质紊乱的机会，尤其是低钾血症'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 337,
                                 '氢氯噻嗪',
                                 '贝那普利',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 338,
                                 '氢氯噻嗪',
                                 '金刚烷胺',
                                 '可产生肾毒性'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 339,
                                 '氢氯噻嗪',
                                 '锂制剂',
                                 '本药可减少肾脏对锂的清除，增加锂的肾毒性'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 340,
                                 '氢氯噻嗪',
                                 '阿司匹林',
                                 '可能引起或加重痛风'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 341,
                                 '氢氯噻嗪',
                                 '阿替洛尔',
                                 '有协同降压作用外，控制心率效果优于单用阿替洛尔'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 342,
                                 '氢氯噻嗪',
                                 '降压药',
                                 '利尿降压作用均加强'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 343,
                                 '氢氯噻嗪',
                                 '降糖药',
                                 '降低降糖药的作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 344,
                                 '氢氯噻嗪',
                                 '非去极化肌松药',
                                 '增强非去极化肌松药的作用，与血钾下降有关'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 345,
                                 '氢氯噻嗪',
                                 '非甾体类抗炎镇痛药，尤其是吲哚美辛',
                                 '能降低本药的利尿作用，与前者抑制前列腺素合成有关'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 346,
                                 '水飞蓟素',
                                 '甲硝唑',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 347,
                                 '沙丁胺醇',
                                 '其他肾上腺素受体激动药',
                                 '其作用可增加，不良反应也可能加重'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 348,
                                 '沙丁胺醇',
                                 '单胺氧化酶抑制剂及三环类抗抑郁药',
                                 '避免同时使用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 349,
                                 '沙丁胺醇',
                                 '吡斯的明',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 350,
                                 '沙丁胺醇',
                                 '异丙托溴铵',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 351,
                                 '沙丁胺醇',
                                 '泮库溴铵',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 352,
                                 '沙丁胺醇',
                                 '精氨酸',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 353,
                                 '沙丁胺醇',
                                 '维库溴铵',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 354,
                                 '沙丁胺醇',
                                 '罗氟司特',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 355,
                                 '沙丁胺醇',
                                 '茶碱类药',
                                 '可增加舒张支气管平滑肌作用，但不良反应也增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 356,
                                 '沙丁胺醇',
                                 '西洛司特',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 357,
                                 '沙丁胺醇',
                                 '贝那普利',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 358,
                                 '沙丙蝶呤',
                                 '食物',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 359,
                                 '沙格列汀',
                                 '二甲双胍',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 360,
                                 '沙格列汀',
                                 '利福平',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 361,
                                 '沙格列汀',
                                 '吡格列酮',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 362,
                                 '沙格列汀',
                                 '地尔硫?',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 363,
                                 '沙格列汀',
                                 '格列本脲',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 364,
                                 '沙格列汀',
                                 '辛伐他汀',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 365,
                                 '沙格列汀',
                                 '酮康唑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 366,
                                 '沙格列汀',
                                 '食物',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 367,
                                 '沙美特罗',
                                 '布洛芬',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 368,
                                 '沙美特罗',
                                 '氟替卡松',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 369,
                                 '沙美特罗',
                                 '沙丁胺醇',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 370,
                                 '沙铂',
                                 '食物',
                                 '食物可能降低沙铂的生物利用度，机制不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 371,
                                 '法莫替丁',
                                 '伊曲康唑、酮康唑',
                                 '可降低后者的药效'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 372,
                                 '法莫替丁',
                                 '烟草',
                                 '可降低法莫替丁的疗效'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 373,
                                 '法莫替丁',
                                 '硝苯地平',
                                 '可逆转硝苯地平的正性肌力作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 374,
                                 '特拉唑嗪',
                                 '泛影葡胺',
                                 '泛影葡胺等造影剂引起的肾脏血管收缩过程可能与α1受体无关，因此特拉唑嗪不能预防泛影葡胺引起的急性肾衰竭。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 375,
                                 '特比萘芬',
                                 '阿芬太尼',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 376,
                                 '环孢素',
                                 '司维拉姆',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 377,
                                 '环孢素',
                                 '吗替麦考酚酯',
                                 '环孢素抑制了麦考酚酸及其葡萄糖醛酸结合物的肠肝循环而降低了麦考酚酸的血药浓度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 378,
                                 '环孢素',
                                 '小檗碱',
                                 '小檗碱可能通过抑制CYP3A4，也可能是延长了胃排空时间而增加了环孢素的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 379,
                                 '环孢素',
                                 '莫西沙星',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 380,
                                 '环孢素',
                                 '西那卡塞',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 381,
                                 '环孢素',
                                 '酮康唑',
                                 '酮康唑主要通过抑制了胃肠道的CYP3A而提高了环孢素的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 382,
                                 '环磷酰胺',
                                 '别嘌呤醇、秋水仙碱、丙磺舒等',
                                 '应调整这些抗痛风药物的剂量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 383,
                                 '环磷酰胺',
                                 '大剂量巴比妥类、皮质激素类药物',
                                 '可影响环磷酰胺的代谢，同时应用可增加急性毒性'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 384,
                                 '瑞加诺生',
                                 '氨茶碱',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 385,
                                 '瑞格列奈',
                                 '伊曲康唑',
                                 '伊曲康唑通过抑制CYP3A4和CYP2C8而减慢瑞格列奈'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 386,
                                 '瑞格列奈',
                                 '克拉霉素',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 387,
                                 '瑞格列奈',
                                 '利福平',
                                 '利福平诱导CYP2C8和CYP3A4可加快瑞格列奈的代谢，降低其降血糖作用。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 388,
                                 '瑞格列奈',
                                 '单胺氧化酶抑制剂( MAOI)，非选择性B受体拮抗剂，ACE抑制剂，非甾体抗炎药，水杨酸盐，奥曲肽，乙醇以及促合成代谢的激素',
                                 '增强瑞格列奈的降血糖作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 389,
                                 '瑞格列奈',
                                 '口服避孕药，噻嗪类药，皮质激素，达那唑，甲状腺激素和拟交感神经药',
                                 '可减弱瑞格列奈片的降血糖作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 390,
                                 '瑞格列奈',
                                 '地高辛',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 391,
                                 '瑞格列奈',
                                 '孟鲁司特',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 392,
                                 '瑞格列奈',
                                 '替利霉素',
                                 '替利霉素通过抑制CYP3A4而减慢瑞格列奈的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 393,
                                 '瑞格列奈',
                                 '环孢素',
                                 '瑞格列奈经CYP3A4代谢，同时又是OATPIB1底物。环孢素足CYP3A4和OATPIB1的抑制剂，抑制了瑞格列奈的代谢，减少肝脏对瑞格列奈的主动摄取。\n'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 394,
                                 '瑞格列奈',
                                 '甲氧苄啶',
                                 '甲氧苄啶是CYP2C8的中等强度抑制剂，可抑制瑞格列奈\n的代谢。\n'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 395,
                                 '瑞格列奈',
                                 '磺胺甲恶唑/甲氧苄啶',
                                 '推测甲氧苄啶通过抑制CYP2C8而减慢瑞格列奈的代谢，患者肾功能不全导致甲氧苄啶的蓄积，加重这一不良药物相互作用的程度。\n'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 396,
                                 '瑞格列奈',
                                 '茶碱和华法林',
                                 '不影响'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 397,
                                 '瑞格列奈',
                                 '西咪替丁',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 398,
                                 '瑞格列奈',
                                 '非诺贝特',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 399,
                                 '瑞波西汀',
                                 '单胺氧化酶抑制剂如吗氯贝胺、苯乙肼唑类',
                                 '停用单胺氧化酶抑制药未超过2周者，亦不宜使用本品'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 400,
                                 '瑞波西汀',
                                 '右美沙芬',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 401,
                                 '瑞波西汀',
                                 '抗心律失常药：普萘洛尔、阿普洛尔、氟哌酰胺',
                                 '协同作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 402,
                                 '瑞波西汀',
                                 '排钾利尿药',
                                 '可能引起高钾血症'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 403,
                                 '瑞波西汀',
                                 '环孢素',
                                 '协同作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 404,
                                 '瑞波西汀',
                                 '红霉素',
                                 '协同作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 405,
                                 '瑞波西汀',
                                 '能抑制CYP3 A4活性的药物',
                                 '可能增加本品的血药浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 406,
                                 '瑞波西汀',
                                 '选择性5-羟色胺重吸收抑制剂',
                                 '协同作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 407,
                                 '瑞波西汀',
                                 '麦角类衍生物',
                                 '可能引起血压升高'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 408,
                                 '瑞舒伐他汀',
                                 '他克莫司',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 409,
                                 '瑞舒伐他汀',
                                 '伊曲康唑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 410,
                                 '瑞舒伐他汀',
                                 '利福平',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 411,
                                 '瑞舒伐他汀',
                                 '华法林',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 412,
                                 '瑞舒伐他汀',
                                 '口服避孕药',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 413,
                                 '瑞舒伐他汀',
                                 '地高辛',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 414,
                                 '瑞舒伐他汀',
                                 '替拉那韦/利托那韦',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 415,
                                 '瑞舒伐他汀',
                                 '氟康唑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 416,
                                 '瑞舒伐他汀',
                                 '氢氧化铝',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 417,
                                 '瑞舒伐他汀',
                                 '氢氧化镁',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 418,
                                 '瑞舒伐他汀',
                                 '环孢素',
                                 '瑞舒伐他汀是OATP2的底物，环孢素显著抑制OATP2[IC50=(2.2±0.4) mmol/L]而减慢肝脏对瑞舒伐他汀的主动摄取与浓集作用。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 419,
                                 '瑞舒伐他汀',
                                 '红霉素',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 420,
                                 '瑞舒伐他汀',
                                 '西地那非',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 421,
                                 '瑞舒伐他汀',
                                 '非诺贝特',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 422,
                                 '瑞舒伐他汀钙',
                                 '华法林',
                                 '不会增加华法林的血药浓度，但会增加INR比值'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 423,
                                 '瑞舒伐他汀钙',
                                 '吉非贝齐',
                                 '可使吉非贝齐的血药浓度增加120%'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 424,
                                 '瑞舒伐他汀钙',
                                 '地高辛',
                                 '对地高辛血药浓度无显著影响'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 425,
                                 '瑞舒伐他汀钙',
                                 '环孢素',
                                 '不会影响环孢素的作用，但会使本药的血药浓度增加7-111倍'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 426,
                                 '瑞舒伐他汀钙',
                                 '避孕药',
                                 '本药会增加避孕药的血药浓度'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 427,
                                 '瑞芬太尼',
                                 '单胺氧化酶抑制剂',
                                 '禁止合用（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 428,
                                 '瑞芬太尼',
                                 '异氟烷',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 429,
                                 '瑞芬太尼',
                                 '血清、血浆等血液制品',
                                 '禁止同一路径给药（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 430,
                                 '甲吡唑',
                                 '乙醇+双硫仑',
                                 '双硫仑样反应是由于乙醇代谢中乙醛脱氢酶被抑制而导致乙醛聚集。甲吡唑是乙醇脱氢酶抑制剂，可以抑制乙醇代谢为乙醛。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 431,
                                 '甲氧氯普胺',
                                 '乙酰氨基酚、左旋多巴、锂化物、四环素、氨苄西林、乙醇和地西泮等',
                                 '使后者在小肠内吸收增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 432,
                                 '甲氧氯普胺',
                                 '佐米曲普坦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 433,
                                 '甲氧氯普胺',
                                 '对乙酰氨基酚、四环素、左旋多巴、乙醇、环孢素',
                                 '可增加其在小肠内的吸收'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 434,
                                 '甲氧氯普胺',
                                 '抗胆碱能药物和麻醉止痛药',
                                 '拮抗作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 435,
                                 '甲氧氯普胺',
                                 '文拉法辛',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 436,
                                 '甲氧氯普胺',
                                 '甲氧氯普胺',
                                 '对胃肠道的能动性效能可被抵消'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 437,
                                 '碘他拉葡胺',
                                 '盐酸异丙嗪、盐酸苯海拉明、马来酸氯苯那敏等',
                                 '可发生沉淀'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 438,
                                 '碘化油',
                                 '131I',
                                 '将减少甲状腺组织对131I的摄取'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 439,
                                 '碘化钾',
                                 '131 I',
                                 '将减少甲状腺组织对131I的摄取'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 440,
                                 '碘化钾',
                                 '血管紧张素转换酶抑制剂或保钾利尿剂',
                                 '易致高钾血症，应监测血钾'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 441,
                                 '碘化钾',
                                 '锂盐',
                                 '可能引起甲状腺功能减退和甲状腺肿大'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 442,
                                 '碘塞罗宁',
                                 '三环类抗抑郁药',
                                 '增强三环类抗抑郁药的作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 443,
                                 '碘塞罗宁',
                                 '抗凝剂',
                                 '增强抗凝剂的抗凝作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 444,
                                 '碘塞罗宁',
                                 '胰岛素或口服降糖药',
                                 '糖尿病患者服用本品应适当增加胰岛素或口服降糖药剂量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 445,
                                 '碘比醇',
                                 '二甲双胍',
                                 '使用前48小时必须停止使用二甲双胍，并且只能在完成放射学检查2天后才能重新开始'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 446,
                                 '碘海醇',
                                 '白介素-2',
                                 '两周内用白介素-2治疗的患者其延迟反应的危险性会增加（感冒样症状和皮肤反应）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 447,
                                 '碘解磷定',
                                 '碱性药物',
                                 '本品在碱性溶液中易分解，禁与碱性药物配伍（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 448,
                                 '碳酸钙',
                                 '含钾药物',
                                 '应注意心律失常的发生'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 449,
                                 '碳酸钙',
                                 '含铝的抗酸药',
                                 '铝的吸收增多'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 450,
                                 '碳酸钙',
                                 '奥司他韦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 451,
                                 '碳酸锂',
                                 '碘131',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 452,
                                 '福莫司汀',
                                 '达卡巴嗪',
                                 '本品与大剂量的达卡巴嗪合用出现肺部毒性表现（成人呼吸窘迫综合征）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 453,
                                 '福辛普利钠',
                                 '潴钾利尿药如螺内酯、氨苯蝶啶、阿米洛利',
                                 '能引起血钾过高'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 454,
                                 '秋水仙碱',
                                 '利托那韦',
                                 '推测利托那韦抑制P-gp而减慢秋水仙碱的排泄，增加其暴露量。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 455,
                                 '秋水仙碱',
                                 '吉非贝齐',
                                 '秋水仙碱和吉非贝齐都有导致肌病的不良反应，合用增加了危险性。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 456,
                                 '秋水仙碱',
                                 '地尔硫?',
                                 '推测地尔硫?抑制P-gp而减慢秋水仙碱的排泄，增加其暴露量。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 457,
                                 '秋水仙碱',
                                 '普伐他汀',
                                 '两者的相互作用可能与P-gp相关，同时患者肾功能不全也是导致肌病的重要因素。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 458,
                                 '秋水仙碱',
                                 '环孢素',
                                 '推测环孢素抑制P-gp而减慢秋水仙碱的排泄，增加其暴露量。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 459,
                                 '秋水仙碱',
                                 '维拉帕米',
                                 '推测维拉帕米抑制P-gp而减慢秋水仙碱的排泄，增加其暴露量。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 460,
                                 '秋水仙碱',
                                 '辛伐他汀',
                                 '辛伐他汀和秋水仙碱竞争CYP3A4代谢，特别是在慢性肾衰竭患者两种药物合用增加发生肌病的危险。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 461,
                                 '秋水仙碱',
                                 '酮康唑',
                                 '推测酮康唑抑制P-gp而减慢秋水仙碱的排泄，增加其暴露量。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 462,
                                 '秋水仙碱',
                                 '阿托伐他汀',
                                 '阿托伐他汀和秋水仙碱竞争CYP3A4代谢，同时秋水仙碱是P-gp的抑制剂，可减轻他汀药物的首过效应，升高阿托伐他汀的血药浓度，在肾病患者合用这两种药物更容易导致肌肉毒性。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 463,
                                 '米氮平',
                                 '锂',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 464,
                                 '索他洛尔',
                                 '牛奶',
                                 '牛奶能降低索他洛尔的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 465,
                                 '索利那新',
                                 '华法林',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 466,
                                 '索曲妥林',
                                 '他克莫司',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 467,
                                 '羟丁酸钠',
                                 '巴比妥类及安定类药物',
                                 '减少锥体外系症状'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 468,
                                 '羟丁酸钠',
                                 '肌松药',
                                 '增强肌松作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 469,
                                 '羟丁酸钠',
                                 '阿托品',
                                 '可减少本品对副交感神经兴奋作用，防止心率减慢发生'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 470,
                                 '羟丁酸钠',
                                 '麻醉性镇痛药',
                                 '易发生呼吸抑制'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 471,
                                 '羟考酮',
                                 'CYP2D6抑制剂',
                                 '可抑制本品代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 472,
                                 '羟考酮',
                                 '中枢抑制药',
                                 '加强中枢抑制作用，本品初始剂量为常规1/3—1/2'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 473,
                                 '羟考酮',
                                 '帕罗西汀',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 474,
                                 '羟考酮',
                                 '帕罗西汀+伊曲康唑',
                                 '推测伊曲康唑可能显著降低羟考酮经CYP3A的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 475,
                                 '羟考酮',
                                 '洛匹那韦/利托那韦',
                                 '推测洛匹那韦/利托那韦通过抑制CYP3A4而减慢羟考酮的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 476,
                                 '羟考酮',
                                 '葡萄柚汁',
                                 '葡萄柚汁可抑制羟考酮的首过效应，降低去甲羟考酮和去甲羟吗啡酮的生成，增加羟吗啡酮的生成。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 477,
                                 '羟考酮',
                                 '酮康唑',
                                 '酮康唑通过抑制CYP3A4而减慢羟考酮的代谢失活，增强疗效的同时增加了不良反应。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 478,
                                 '考来烯胺',
                                 '双氯芬酸',
                                 '考来烯胺降低双氯芬酸的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 479,
                                 '考来烯胺',
                                 '氢化可的松',
                                 '考来烯胺降低口服氢化可的松的生物利用度，减慢其吸收。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 480,
                                 '胺碘酮',
                                 '曲唑酮',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 481,
                                 '舍曲林',
                                 '5 - HT能神经功能的药物（如氯米帕明、阿米替林、丙米嗪、苯丙胺、芬氟拉明等）',
                                 '可导致5 - HT综合征'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 482,
                                 '舍曲林',
                                 'CYP2D6抑制剂及底物',
                                 '可产生药物相互作用，导致不良反应'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 483,
                                 '舍曲林',
                                 'ω-3脂肪酸',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 484,
                                 '舍曲林',
                                 '乙醇',
                                 '可使精神和运动技能损害的危险性增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 485,
                                 '舍曲林',
                                 '匹莫齐特',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 486,
                                 '舍曲林',
                                 '单胺氧化酶抑制药',
                                 '避免合用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 487,
                                 '舍曲林',
                                 '多奈哌齐',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 488,
                                 '舍曲林',
                                 '甲苯磺丁脲',
                                 '推测舍曲林轻度抑制了CYP2C9/10，轻微减慢甲苯磺丁脲的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 489,
                                 '舍曲林',
                                 '红霉素',
                                 '红霉素抑制CYP3A4后显著减慢了舍曲林的代谢，导致血药浓度升高。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 490,
                                 '舍曲林',
                                 '苯妥英钠',
                                 '本品能抑制苯妥英钠的代谢而增加后者的毒性'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 491,
                                 '舍曲林',
                                 '茶碱',
                                 '使后者的血药浓度升高，增加茶碱不良反应的发生'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 492,
                                 '舍曲林',
                                 '葡萄柚汁',
                                 '推测葡萄柚汁抑制肠道CYP3A4而减慢舍曲林代谢为去甲舍曲林。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 493,
                                 '舍曲林',
                                 '锂盐',
                                 '可能产生药效学的相互作用，出现震颤，应谨慎'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 494,
                                 '舍曲林',
                                 '阿普唑仑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 495,
                                 '舍曲林',
                                 '阿立哌唑',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 496,
                                 '舒尼替尼',
                                 'CYP3 A4强抑制剂',
                                 '可以降低本品代谢，使其血药浓度升高，如必须合并使用时，应考虑降低本品的剂量'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 497,
                                 '舒尼替尼',
                                 '多西他赛',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 498,
                                 '舒林酸',
                                 'ACEI',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 499,
                                 '舒林酸',
                                 '华法林',
                                 '同时服用时可致凝血酶原时间延长'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 500,
                                 '舒林酸',
                                 '甲苯磺丁脲',
                                 '同服可使空腹血糖下降明显'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 501,
                                 '舒林酸',
                                 '阿司匹林',
                                 '可降低本药活性，使本品的疗效反而降低，且可能出现周围神经病变'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 502,
                                 '舒马普坦',
                                 '氟桂利嗪',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 503,
                                 '舒马普坦',
                                 '麦角胺类',
                                 '可发生血管痉挛、血压升高，24小时禁止同服（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 504,
                                 '药用炭',
                                 '阿托品',
                                 '推测阿托品减慢胃肠道蠕动，增强药用炭的吸附作用。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 505,
                                 '西咪替丁',
                                 '丙吡胺',
                                 '西咪替丁轻度提高口服丙吡胺的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 506,
                                 '西咪替丁',
                                 '丙戊酸',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 507,
                                 '西咪替丁',
                                 '丙米嗪',
                                 '合用西咪替丁使口服丙米嗪的生物利用度升高。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 508,
                                 '西咪替丁',
                                 '伏立康唑',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 509,
                                 '西咪替丁',
                                 '克拉霉素',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 510,
                                 '西咪替丁',
                                 '利多卡因',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 511,
                                 '西咪替丁',
                                 '华法林',
                                 '西咪替丁主要抑制CYP3A4、CYP2D6和CYP2C19，而S-华法林主要经CYP2C9代谢，R-华法林主要经CYP1A2和CYP2C19代谢，故对R-华法林的代谢有一定影响。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 512,
                                 '西咪替丁',
                                 '卡马西平',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 513,
                                 '西咪替丁',
                                 '吡喹酮',
                                 '西咪替丁可以升高吡喹酮的血药浓度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 514,
                                 '西咪替丁',
                                 '咖啡因',
                                 '西咪替丁轻度减少咖啡因的总清除率，延长了t1/2。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 515,
                                 '西咪替丁',
                                 '地高辛',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 516,
                                 '西咪替丁',
                                 '多塞平',
                                 '西咪替丁轻度升高多塞平的生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 517,
                                 '西咪替丁',
                                 '多奈哌齐',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 518,
                                 '西咪替丁',
                                 '奎宁',
                                 '西咪替丁可能轻度减慢奎宁的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 519,
                                 '西咪替丁',
                                 '奥卡西平',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 520,
                                 '西咪替丁',
                                 '奥司他韦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 521,
                                 '西咪替丁',
                                 '安非他酮',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 522,
                                 '西咪替丁',
                                 '对乙酰氨基酚',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 523,
                                 '西咪替丁',
                                 '己酮可可碱',
                                 '西咪替丁通过降低肝脏的首过效应而提高了己酮可可碱的血浆浓度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 524,
                                 '西咪替丁',
                                 '布比卡因',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 525,
                                 '西咪替丁',
                                 '布洛芬',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 526,
                                 '西咪替丁',
                                 '恩氟烷',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 527,
                                 '西咪替丁',
                                 '拉莫三嗪',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 528,
                                 '西咪替丁',
                                 '格拉司琼',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 529,
                                 '西咪替丁',
                                 '氟比洛芬',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 530,
                                 '西咪替丁',
                                 '氯丙嗪',
                                 '西咪替丁能抑制氯丙嗪的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 531,
                                 '西咪替丁',
                                 '氯喹',
                                 '西咪替丁轻微抑制氯喹的消除过程。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 532,
                                 '西咪替丁',
                                 '氯氮平',
                                 '推测西咪替丁通过抑制CYP450而减慢氯氮平的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 533,
                                 '西咪替丁',
                                 '氯胍',
                                 '西咪替丁轻度抑制氯胍的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 534,
                                 '西咪替丁',
                                 '环丙沙星+茶碱',
                                 '合用西咪替丁和环丙沙星显著降低茶碱的清除率。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 535,
                                 '西咪替丁',
                                 '甲氧氯普胺',
                                 '可使本品的血药浓度降低，本品的剂量需适当增加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 536,
                                 '西咪替丁',
                                 '硫糖铝',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 537,
                                 '西咪替丁',
                                 '磷酸铝',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 538,
                                 '西咪替丁',
                                 '表柔比星',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 539,
                                 '西咪替丁',
                                 '阿利吉仑',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 540,
                                 '西咪替丁',
                                 '阿吡坦',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 541,
                                 '西咪替丁',
                                 '阿地唑仑',
                                 '西咪替丁减慢阿地唑仑及其代谢物的代谢。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 542,
                                 '西咪替丁',
                                 '阿夫唑嗪',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 543,
                                 '西咪替丁',
                                 '阿托伐他汀',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 544,
                                 '西咪替丁',
                                 '阿普唑仑',
                                 '西咪替丁减慢阿普唑仑的代谢清除。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 545,
                                 '西咪替丁',
                                 '阿格列汀',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 546,
                                 '西咪替丁',
                                 '非索非那定',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 547,
                                 '赛庚啶',
                                 '中枢神经系统抑制药',
                                 '可增强中枢抑制作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 548,
                                 '赛庚啶',
                                 '促甲状腺激素释放激素',
                                 '可能使血清淀粉酶和催乳素水平增高而影响诊断'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 549,
                                 '赛庚啶',
                                 '缬草',
                                 '可增强本品作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 550,
                                 '酮咯酸氨丁三醇；',
                                 'ACE抑制剂',
                                 '有增加肾功能损伤的可能性，尤其是对血容衰竭的患者这种危险性更大'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 551,
                                 '酮康唑',
                                 '伊马替尼',
                                 '酮康唑通过抑制CYP3A4而显著减慢伊马替尼的代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 552,
                                 '酮康唑',
                                 '尼洛替尼',
                                 '推测酮康唑通过抑制CYP3A4而减慢尼洛替尼的代谢'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 553,
                                 '酮康唑',
                                 '帕比司他',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 554,
                                 '酮康唑',
                                 '沙奎那韦/利托那韦',
                                 '酮康唑通过抑制CYP3A4而减慢了沙奎那韦的代谢，作用类似利于托那韦。同时酮康唑通过抑制P-gp而减少利托那韦的泵出效应，增加了脑脊液中的含量。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 555,
                                 '酮康唑',
                                 '米罗那非',
                                 '推测酮康唑通过抑制CYP3A4而减慢米罗那非的代谢清除。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 556,
                                 '酮康唑',
                                 '西那卡塞',
                                 '推测酮康唑通过抑制肠道或肝脏的CYP3A4而减轻了西那卡塞的首过效应，增加其生物利用度。'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 557,
                                 '酮康唑',
                                 '齐拉西酮',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 558,
                                 '酮替芬',
                                 '抗组胺药物',
                                 '有一定协同作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 559,
                                 '铁补充剂',
                                 '制酸药如碳酸氢钠、磷酸盐类及含鞣酸的药物或饮料',
                                 '易产生沉淀而影响吸收，属于禁忌（严重）'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 560,
                                 '雷尼替丁',
                                 '阿扎那韦/利托那韦',
                                 '不详'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 561,
                                 '青霉胺',
                                 '对肾和血液系统有不良反应的药物',
                                 '它们的毒性作用相加'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 562,
                                 '青霉胺',
                                 '抗疟药、金制剂（金硫葡糖、金硫丁二钠、金诺芬等）、免疫抑制剂、保泰松',
                                 '加重造血系统和肾脏的不良反应'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 563,
                                 '青霉胺',
                                 '铁剂、其他金属离子和抗酸药',
                                 '口服铁剂患者，本品宜在服铁剂前2小时口服，以免减弱本品疗效'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 564,
                                 '非诺贝特',
                                 'HMG - CoA还原酶抑制剂',
                                 '可引起肌痛、横纹肌溶解、血肌酸磷酸激酶增高等肌病，严重时应停药'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 565,
                                 '非诺贝特',
                                 '依折麦布',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 566,
                                 '非诺贝特',
                                 '免疫抑制剂',
                                 '可能有导致肾功能恶化的危险，应减量或停药'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 567,
                                 '非诺贝特',
                                 '烟酸',
                                 '无相互作用'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 568,
                                 '非诺贝特',
                                 '考来烯胺',
                                 '至少应在服用这些药物之前l小时或4—6小时之后再服用非诺贝特'
                             );

INSERT INTO drug_interaction (
                                 id,
                                 drug1,
                                 drug2,
                                 interaction
                             )
                             VALUES (
                                 569,
                                 '非诺贝特',
                                 '香豆素类抗凝剂',
                                 '增强抗凝作用'
                             );


-- 表：drug_introduction
DROP TABLE IF EXISTS drug_introduction;

CREATE TABLE IF NOT EXISTS drug_introduction (
    id     INTEGER       NOT NULL
                         PRIMARY KEY AUTOINCREMENT,
    name   VARCHAR (200) NOT NULL,
    drugs  VARCHAR (200) NOT NULL,
    effect VARCHAR (200) NOT NULL
);


-- 索引：auth_group_permissions_group_id_b120cbf9
DROP INDEX IF EXISTS auth_group_permissions_group_id_b120cbf9;

CREATE INDEX IF NOT EXISTS auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- 索引：auth_group_permissions_group_id_permission_id_0cd325b0_uniq
DROP INDEX IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- 索引：auth_group_permissions_permission_id_84c5c92e
DROP INDEX IF EXISTS auth_group_permissions_permission_id_84c5c92e;

CREATE INDEX IF NOT EXISTS auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- 索引：auth_permission_content_type_id_2f476e4b
DROP INDEX IF EXISTS auth_permission_content_type_id_2f476e4b;

CREATE INDEX IF NOT EXISTS auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- 索引：auth_permission_content_type_id_codename_01ab375a_uniq
DROP INDEX IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- 索引：auth_user_groups_group_id_97559544
DROP INDEX IF EXISTS auth_user_groups_group_id_97559544;

CREATE INDEX IF NOT EXISTS auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- 索引：auth_user_groups_user_id_6a12ed8b
DROP INDEX IF EXISTS auth_user_groups_user_id_6a12ed8b;

CREATE INDEX IF NOT EXISTS auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- 索引：auth_user_groups_user_id_group_id_94350c0c_uniq
DROP INDEX IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- 索引：auth_user_user_permissions_permission_id_1fbb5f2c
DROP INDEX IF EXISTS auth_user_user_permissions_permission_id_1fbb5f2c;

CREATE INDEX IF NOT EXISTS auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- 索引：auth_user_user_permissions_user_id_a95ead1b
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_a95ead1b;

CREATE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- 索引：auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- 索引：django_admin_log_content_type_id_c4bce8eb
DROP INDEX IF EXISTS django_admin_log_content_type_id_c4bce8eb;

CREATE INDEX IF NOT EXISTS django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- 索引：django_admin_log_user_id_c564eba6
DROP INDEX IF EXISTS django_admin_log_user_id_c564eba6;

CREATE INDEX IF NOT EXISTS django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- 索引：django_content_type_app_label_model_76bd3d3b_uniq
DROP INDEX IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;

CREATE UNIQUE INDEX IF NOT EXISTS django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- 索引：django_session_expire_date_a5c62663
DROP INDEX IF EXISTS django_session_expire_date_a5c62663;

CREATE INDEX IF NOT EXISTS django_session_expire_date_a5c62663 ON django_session (
    "expire_date"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
