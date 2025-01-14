PGDMP         "                y            cagarbudaya    13.2    13.2 o    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    80310    cagarbudaya    DATABASE     k   CREATE DATABASE cagarbudaya WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE cagarbudaya;
                postgres    false            �            1259    92025    admin    TABLE     �   CREATE TABLE public.admin (
    id_admin integer NOT NULL,
    id_role integer NOT NULL,
    username character varying(256) NOT NULL,
    password character varying(256) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    92021    admin_id_admin_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_id_admin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_id_admin_seq;
       public          postgres    false    219            >           0    0    admin_id_admin_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_id_admin_seq OWNED BY public.admin.id_admin;
          public          postgres    false    217            �            1259    92023    admin_id_role_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.admin_id_role_seq;
       public          postgres    false    219            ?           0    0    admin_id_role_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.admin_id_role_seq OWNED BY public.admin.id_role;
          public          postgres    false    218            �            1259    88955    bangunan    TABLE     �   CREATE TABLE public.bangunan (
    id_bangunan integer NOT NULL,
    nama_bangunan character varying(256),
    id_tangible integer NOT NULL
);
    DROP TABLE public.bangunan;
       public         heap    postgres    false            �            1259    88951    bangunan_id_bangunan_seq    SEQUENCE     �   CREATE SEQUENCE public.bangunan_id_bangunan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bangunan_id_bangunan_seq;
       public          postgres    false    210            @           0    0    bangunan_id_bangunan_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bangunan_id_bangunan_seq OWNED BY public.bangunan.id_bangunan;
          public          postgres    false    208            �            1259    88953    bangunan_id_tangible_seq    SEQUENCE     �   CREATE SEQUENCE public.bangunan_id_tangible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bangunan_id_tangible_seq;
       public          postgres    false    210            A           0    0    bangunan_id_tangible_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bangunan_id_tangible_seq OWNED BY public.bangunan.id_tangible;
          public          postgres    false    209            �            1259    83964    daerah    TABLE     �   CREATE TABLE public.daerah (
    id_daerah integer NOT NULL,
    nama_daerah character varying(128),
    id_provinsi integer NOT NULL,
    logo_daerah character varying(256),
    kode_daerah character varying(256)
);
    DROP TABLE public.daerah;
       public         heap    postgres    false            �            1259    83960    daerah_id_daerah_seq    SEQUENCE     �   CREATE SEQUENCE public.daerah_id_daerah_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.daerah_id_daerah_seq;
       public          postgres    false    202            B           0    0    daerah_id_daerah_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.daerah_id_daerah_seq OWNED BY public.daerah.id_daerah;
          public          postgres    false    200            �            1259    83962    daerah_id_provinsi_seq    SEQUENCE     �   CREATE SEQUENCE public.daerah_id_provinsi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.daerah_id_provinsi_seq;
       public          postgres    false    202            C           0    0    daerah_id_provinsi_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.daerah_id_provinsi_seq OWNED BY public.daerah.id_provinsi;
          public          postgres    false    201            �            1259    91888    post_intangible    TABLE     �  CREATE TABLE public.post_intangible (
    id_post_intangible integer NOT NULL,
    nama_post_intangible character varying(500),
    detail_post_intangible character varying(1080),
    alamat_post_intangible character varying(500),
    sejarah_post_intangible character varying(1080),
    no_regnas_post_intangible character varying(50),
    jenis_post_intangible character varying(25),
    id_tangible integer NOT NULL
);
 #   DROP TABLE public.post_intangible;
       public         heap    postgres    false            �            1259    91884 &   post_intangible_id_post_intangible_seq    SEQUENCE     �   CREATE SEQUENCE public.post_intangible_id_post_intangible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.post_intangible_id_post_intangible_seq;
       public          postgres    false    216            D           0    0 &   post_intangible_id_post_intangible_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.post_intangible_id_post_intangible_seq OWNED BY public.post_intangible.id_post_intangible;
          public          postgres    false    214            �            1259    91886    post_intangible_id_tangible_seq    SEQUENCE     �   CREATE SEQUENCE public.post_intangible_id_tangible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.post_intangible_id_tangible_seq;
       public          postgres    false    216            E           0    0    post_intangible_id_tangible_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.post_intangible_id_tangible_seq OWNED BY public.post_intangible.id_tangible;
          public          postgres    false    215            �            1259    91845    post_tangible    TABLE     �  CREATE TABLE public.post_tangible (
    id_post_tangible integer NOT NULL,
    nama_post_tangible character varying(250),
    detail_post_tangible character varying(1080),
    alamat_post_tangible character varying(500),
    sejarah_post_tangible character varying(1080),
    no_regnas_post_tangible character varying(50),
    jenis_post_tangible character varying(50),
    id_tangible integer NOT NULL,
    kode_post_tangible character varying(256),
    logo_post_tangible character varying(256)
);
 !   DROP TABLE public.post_tangible;
       public         heap    postgres    false            �            1259    91841 "   post_tangible_id_post_tangible_seq    SEQUENCE     �   CREATE SEQUENCE public.post_tangible_id_post_tangible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.post_tangible_id_post_tangible_seq;
       public          postgres    false    213            F           0    0 "   post_tangible_id_post_tangible_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.post_tangible_id_post_tangible_seq OWNED BY public.post_tangible.id_post_tangible;
          public          postgres    false    211            �            1259    91843    post_tangible_id_tangible_seq    SEQUENCE     �   CREATE SEQUENCE public.post_tangible_id_tangible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.post_tangible_id_tangible_seq;
       public          postgres    false    213            G           0    0    post_tangible_id_tangible_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.post_tangible_id_tangible_seq OWNED BY public.post_tangible.id_tangible;
          public          postgres    false    212            �            1259    83976    provinsi    TABLE     �   CREATE TABLE public.provinsi (
    id_provinsi integer NOT NULL,
    nama_provinsi character varying(256),
    logo_provinsi character varying(256),
    kode_provinsi character varying(256)
);
    DROP TABLE public.provinsi;
       public         heap    postgres    false            �            1259    83974    provinsi_id_provinsi_seq    SEQUENCE     �   CREATE SEQUENCE public.provinsi_id_provinsi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.provinsi_id_provinsi_seq;
       public          postgres    false    204            H           0    0    provinsi_id_provinsi_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.provinsi_id_provinsi_seq OWNED BY public.provinsi.id_provinsi;
          public          postgres    false    203            �            1259    92047    role    TABLE     \   CREATE TABLE public.role (
    id_role integer NOT NULL,
    name character varying(256)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    92045    role_id_role_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.role_id_role_seq;
       public          postgres    false    221            I           0    0    role_id_role_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.role_id_role_seq OWNED BY public.role.id_role;
          public          postgres    false    220            �            1259    88500    tangible    TABLE     �   CREATE TABLE public.tangible (
    id_tangible integer NOT NULL,
    nama_tangible character varying(250),
    id_tipe integer NOT NULL,
    logo_tangible character varying(250)
);
    DROP TABLE public.tangible;
       public         heap    postgres    false            �            1259    88496    tangible_id_tangible_seq    SEQUENCE     �   CREATE SEQUENCE public.tangible_id_tangible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tangible_id_tangible_seq;
       public          postgres    false    207            J           0    0    tangible_id_tangible_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tangible_id_tangible_seq OWNED BY public.tangible.id_tangible;
          public          postgres    false    205            �            1259    88498    tangible_id_tipe_seq    SEQUENCE     �   CREATE SEQUENCE public.tangible_id_tipe_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tangible_id_tipe_seq;
       public          postgres    false    207            K           0    0    tangible_id_tipe_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tangible_id_tipe_seq OWNED BY public.tangible.id_tipe;
          public          postgres    false    206            �            1259    94486    tipe    TABLE     �   CREATE TABLE public.tipe (
    id_tipe integer NOT NULL,
    nama_tipe character varying(250),
    logo_tipe character varying(250),
    id_daerah integer NOT NULL
);
    DROP TABLE public.tipe;
       public         heap    postgres    false            �            1259    94484    tipe_id_daerah_seq    SEQUENCE     �   CREATE SEQUENCE public.tipe_id_daerah_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tipe_id_daerah_seq;
       public          postgres    false    224            L           0    0    tipe_id_daerah_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tipe_id_daerah_seq OWNED BY public.tipe.id_daerah;
          public          postgres    false    223            �            1259    94482    tipe_id_tipe_seq    SEQUENCE     �   CREATE SEQUENCE public.tipe_id_tipe_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tipe_id_tipe_seq;
       public          postgres    false    224            M           0    0    tipe_id_tipe_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tipe_id_tipe_seq OWNED BY public.tipe.id_tipe;
          public          postgres    false    222            �            1259    96581    tipe_tangible    TABLE     |   CREATE TABLE public.tipe_tangible (
    id_tipe_tangible integer NOT NULL,
    nama_tipe_tangible character varying(256)
);
 !   DROP TABLE public.tipe_tangible;
       public         heap    postgres    false            �            1259    96579 "   tipe_tangible_id_tipe_tangible_seq    SEQUENCE     �   CREATE SEQUENCE public.tipe_tangible_id_tipe_tangible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipe_tangible_id_tipe_tangible_seq;
       public          postgres    false    226            N           0    0 "   tipe_tangible_id_tipe_tangible_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipe_tangible_id_tipe_tangible_seq OWNED BY public.tipe_tangible.id_tipe_tangible;
          public          postgres    false    225            x           2604    92028    admin id_admin    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN id_admin SET DEFAULT nextval('public.admin_id_admin_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN id_admin DROP DEFAULT;
       public          postgres    false    217    219    219            y           2604    92029    admin id_role    DEFAULT     n   ALTER TABLE ONLY public.admin ALTER COLUMN id_role SET DEFAULT nextval('public.admin_id_role_seq'::regclass);
 <   ALTER TABLE public.admin ALTER COLUMN id_role DROP DEFAULT;
       public          postgres    false    218    219    219            r           2604    88958    bangunan id_bangunan    DEFAULT     |   ALTER TABLE ONLY public.bangunan ALTER COLUMN id_bangunan SET DEFAULT nextval('public.bangunan_id_bangunan_seq'::regclass);
 C   ALTER TABLE public.bangunan ALTER COLUMN id_bangunan DROP DEFAULT;
       public          postgres    false    208    210    210            s           2604    88959    bangunan id_tangible    DEFAULT     |   ALTER TABLE ONLY public.bangunan ALTER COLUMN id_tangible SET DEFAULT nextval('public.bangunan_id_tangible_seq'::regclass);
 C   ALTER TABLE public.bangunan ALTER COLUMN id_tangible DROP DEFAULT;
       public          postgres    false    209    210    210            m           2604    83967    daerah id_daerah    DEFAULT     t   ALTER TABLE ONLY public.daerah ALTER COLUMN id_daerah SET DEFAULT nextval('public.daerah_id_daerah_seq'::regclass);
 ?   ALTER TABLE public.daerah ALTER COLUMN id_daerah DROP DEFAULT;
       public          postgres    false    202    200    202            n           2604    83968    daerah id_provinsi    DEFAULT     x   ALTER TABLE ONLY public.daerah ALTER COLUMN id_provinsi SET DEFAULT nextval('public.daerah_id_provinsi_seq'::regclass);
 A   ALTER TABLE public.daerah ALTER COLUMN id_provinsi DROP DEFAULT;
       public          postgres    false    201    202    202            v           2604    91891 "   post_intangible id_post_intangible    DEFAULT     �   ALTER TABLE ONLY public.post_intangible ALTER COLUMN id_post_intangible SET DEFAULT nextval('public.post_intangible_id_post_intangible_seq'::regclass);
 Q   ALTER TABLE public.post_intangible ALTER COLUMN id_post_intangible DROP DEFAULT;
       public          postgres    false    214    216    216            w           2604    91892    post_intangible id_tangible    DEFAULT     �   ALTER TABLE ONLY public.post_intangible ALTER COLUMN id_tangible SET DEFAULT nextval('public.post_intangible_id_tangible_seq'::regclass);
 J   ALTER TABLE public.post_intangible ALTER COLUMN id_tangible DROP DEFAULT;
       public          postgres    false    215    216    216            t           2604    91848    post_tangible id_post_tangible    DEFAULT     �   ALTER TABLE ONLY public.post_tangible ALTER COLUMN id_post_tangible SET DEFAULT nextval('public.post_tangible_id_post_tangible_seq'::regclass);
 M   ALTER TABLE public.post_tangible ALTER COLUMN id_post_tangible DROP DEFAULT;
       public          postgres    false    213    211    213            u           2604    91849    post_tangible id_tangible    DEFAULT     �   ALTER TABLE ONLY public.post_tangible ALTER COLUMN id_tangible SET DEFAULT nextval('public.post_tangible_id_tangible_seq'::regclass);
 H   ALTER TABLE public.post_tangible ALTER COLUMN id_tangible DROP DEFAULT;
       public          postgres    false    212    213    213            o           2604    83979    provinsi id_provinsi    DEFAULT     |   ALTER TABLE ONLY public.provinsi ALTER COLUMN id_provinsi SET DEFAULT nextval('public.provinsi_id_provinsi_seq'::regclass);
 C   ALTER TABLE public.provinsi ALTER COLUMN id_provinsi DROP DEFAULT;
       public          postgres    false    203    204    204            z           2604    92050    role id_role    DEFAULT     l   ALTER TABLE ONLY public.role ALTER COLUMN id_role SET DEFAULT nextval('public.role_id_role_seq'::regclass);
 ;   ALTER TABLE public.role ALTER COLUMN id_role DROP DEFAULT;
       public          postgres    false    221    220    221            p           2604    88503    tangible id_tangible    DEFAULT     |   ALTER TABLE ONLY public.tangible ALTER COLUMN id_tangible SET DEFAULT nextval('public.tangible_id_tangible_seq'::regclass);
 C   ALTER TABLE public.tangible ALTER COLUMN id_tangible DROP DEFAULT;
       public          postgres    false    207    205    207            q           2604    88504    tangible id_tipe    DEFAULT     t   ALTER TABLE ONLY public.tangible ALTER COLUMN id_tipe SET DEFAULT nextval('public.tangible_id_tipe_seq'::regclass);
 ?   ALTER TABLE public.tangible ALTER COLUMN id_tipe DROP DEFAULT;
       public          postgres    false    207    206    207            {           2604    94489    tipe id_tipe    DEFAULT     l   ALTER TABLE ONLY public.tipe ALTER COLUMN id_tipe SET DEFAULT nextval('public.tipe_id_tipe_seq'::regclass);
 ;   ALTER TABLE public.tipe ALTER COLUMN id_tipe DROP DEFAULT;
       public          postgres    false    222    224    224            |           2604    94490    tipe id_daerah    DEFAULT     p   ALTER TABLE ONLY public.tipe ALTER COLUMN id_daerah SET DEFAULT nextval('public.tipe_id_daerah_seq'::regclass);
 =   ALTER TABLE public.tipe ALTER COLUMN id_daerah DROP DEFAULT;
       public          postgres    false    224    223    224            }           2604    96584    tipe_tangible id_tipe_tangible    DEFAULT     �   ALTER TABLE ONLY public.tipe_tangible ALTER COLUMN id_tipe_tangible SET DEFAULT nextval('public.tipe_tangible_id_tipe_tangible_seq'::regclass);
 M   ALTER TABLE public.tipe_tangible ALTER COLUMN id_tipe_tangible DROP DEFAULT;
       public          postgres    false    226    225    226            0          0    92025    admin 
   TABLE DATA           F   COPY public.admin (id_admin, id_role, username, password) FROM stdin;
    public          postgres    false    219   ��       '          0    88955    bangunan 
   TABLE DATA           K   COPY public.bangunan (id_bangunan, nama_bangunan, id_tangible) FROM stdin;
    public          postgres    false    210   ͂                 0    83964    daerah 
   TABLE DATA           _   COPY public.daerah (id_daerah, nama_daerah, id_provinsi, logo_daerah, kode_daerah) FROM stdin;
    public          postgres    false    202    �       -          0    91888    post_intangible 
   TABLE DATA           �   COPY public.post_intangible (id_post_intangible, nama_post_intangible, detail_post_intangible, alamat_post_intangible, sejarah_post_intangible, no_regnas_post_intangible, jenis_post_intangible, id_tangible) FROM stdin;
    public          postgres    false    216   |�       *          0    91845    post_tangible 
   TABLE DATA           �   COPY public.post_tangible (id_post_tangible, nama_post_tangible, detail_post_tangible, alamat_post_tangible, sejarah_post_tangible, no_regnas_post_tangible, jenis_post_tangible, id_tangible, kode_post_tangible, logo_post_tangible) FROM stdin;
    public          postgres    false    213   ��       !          0    83976    provinsi 
   TABLE DATA           \   COPY public.provinsi (id_provinsi, nama_provinsi, logo_provinsi, kode_provinsi) FROM stdin;
    public          postgres    false    204   �       2          0    92047    role 
   TABLE DATA           -   COPY public.role (id_role, name) FROM stdin;
    public          postgres    false    221   �       $          0    88500    tangible 
   TABLE DATA           V   COPY public.tangible (id_tangible, nama_tangible, id_tipe, logo_tangible) FROM stdin;
    public          postgres    false    207   �       5          0    94486    tipe 
   TABLE DATA           H   COPY public.tipe (id_tipe, nama_tipe, logo_tipe, id_daerah) FROM stdin;
    public          postgres    false    224   ��       7          0    96581    tipe_tangible 
   TABLE DATA           M   COPY public.tipe_tangible (id_tipe_tangible, nama_tipe_tangible) FROM stdin;
    public          postgres    false    226   ؅       O           0    0    admin_id_admin_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_id_admin_seq', 1, false);
          public          postgres    false    217            P           0    0    admin_id_role_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_id_role_seq', 1, false);
          public          postgres    false    218            Q           0    0    bangunan_id_bangunan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bangunan_id_bangunan_seq', 1, false);
          public          postgres    false    208            R           0    0    bangunan_id_tangible_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bangunan_id_tangible_seq', 1, false);
          public          postgres    false    209            S           0    0    daerah_id_daerah_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.daerah_id_daerah_seq', 12, true);
          public          postgres    false    200            T           0    0    daerah_id_provinsi_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.daerah_id_provinsi_seq', 1, false);
          public          postgres    false    201            U           0    0 &   post_intangible_id_post_intangible_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.post_intangible_id_post_intangible_seq', 1, false);
          public          postgres    false    214            V           0    0    post_intangible_id_tangible_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.post_intangible_id_tangible_seq', 1, false);
          public          postgres    false    215            W           0    0 "   post_tangible_id_post_tangible_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.post_tangible_id_post_tangible_seq', 5, true);
          public          postgres    false    211            X           0    0    post_tangible_id_tangible_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.post_tangible_id_tangible_seq', 1, false);
          public          postgres    false    212            Y           0    0    provinsi_id_provinsi_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.provinsi_id_provinsi_seq', 10, true);
          public          postgres    false    203            Z           0    0    role_id_role_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.role_id_role_seq', 1, false);
          public          postgres    false    220            [           0    0    tangible_id_tangible_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tangible_id_tangible_seq', 7, true);
          public          postgres    false    205            \           0    0    tangible_id_tipe_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tangible_id_tipe_seq', 1, false);
          public          postgres    false    206            ]           0    0    tipe_id_daerah_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tipe_id_daerah_seq', 1, false);
          public          postgres    false    223            ^           0    0    tipe_id_tipe_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tipe_id_tipe_seq', 4, true);
          public          postgres    false    222            _           0    0 "   tipe_tangible_id_tipe_tangible_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tipe_tangible_id_tipe_tangible_seq', 1, false);
          public          postgres    false    225            �           2606    92034    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_admin);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    219            �           2606    88961    bangunan bangunan_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.bangunan
    ADD CONSTRAINT bangunan_pkey PRIMARY KEY (id_bangunan);
 @   ALTER TABLE ONLY public.bangunan DROP CONSTRAINT bangunan_pkey;
       public            postgres    false    210                       2606    83970    daerah daerah_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.daerah
    ADD CONSTRAINT daerah_pkey PRIMARY KEY (id_daerah);
 <   ALTER TABLE ONLY public.daerah DROP CONSTRAINT daerah_pkey;
       public            postgres    false    202            �           2606    91897 $   post_intangible post_intangible_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.post_intangible
    ADD CONSTRAINT post_intangible_pkey PRIMARY KEY (id_post_intangible);
 N   ALTER TABLE ONLY public.post_intangible DROP CONSTRAINT post_intangible_pkey;
       public            postgres    false    216            �           2606    91854     post_tangible post_tangible_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.post_tangible
    ADD CONSTRAINT post_tangible_pkey PRIMARY KEY (id_post_tangible);
 J   ALTER TABLE ONLY public.post_tangible DROP CONSTRAINT post_tangible_pkey;
       public            postgres    false    213            �           2606    83984    provinsi provinsi_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.provinsi
    ADD CONSTRAINT provinsi_pkey PRIMARY KEY (id_provinsi);
 @   ALTER TABLE ONLY public.provinsi DROP CONSTRAINT provinsi_pkey;
       public            postgres    false    204            �           2606    92052    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    221            �           2606    88506    tangible tangible_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tangible
    ADD CONSTRAINT tangible_pkey PRIMARY KEY (id_tangible);
 @   ALTER TABLE ONLY public.tangible DROP CONSTRAINT tangible_pkey;
       public            postgres    false    207            �           2606    94495    tipe tipe_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tipe
    ADD CONSTRAINT tipe_pkey PRIMARY KEY (id_tipe);
 8   ALTER TABLE ONLY public.tipe DROP CONSTRAINT tipe_pkey;
       public            postgres    false    224            �           2606    96586     tipe_tangible tipe_tangible_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tipe_tangible
    ADD CONSTRAINT tipe_tangible_pkey PRIMARY KEY (id_tipe_tangible);
 J   ALTER TABLE ONLY public.tipe_tangible DROP CONSTRAINT tipe_tangible_pkey;
       public            postgres    false    226            �           1259    92061    fk_role    INDEX     <   CREATE INDEX fk_role ON public.admin USING btree (id_role);
    DROP INDEX public.fk_role;
       public            postgres    false    219            �           1259    88971    fki_fk_tangible    INDEX     K   CREATE INDEX fki_fk_tangible ON public.bangunan USING btree (id_tangible);
 #   DROP INDEX public.fki_fk_tangible;
       public            postgres    false    210            �           2606    94496    tipe fk_daerah    FK CONSTRAINT     w   ALTER TABLE ONLY public.tipe
    ADD CONSTRAINT fk_daerah FOREIGN KEY (id_daerah) REFERENCES public.daerah(id_daerah);
 8   ALTER TABLE ONLY public.tipe DROP CONSTRAINT fk_daerah;
       public          postgres    false    224    2943    202            �           2606    84008    daerah fk_provinsi    FK CONSTRAINT     �   ALTER TABLE ONLY public.daerah
    ADD CONSTRAINT fk_provinsi FOREIGN KEY (id_provinsi) REFERENCES public.provinsi(id_provinsi);
 <   ALTER TABLE ONLY public.daerah DROP CONSTRAINT fk_provinsi;
       public          postgres    false    2945    204    202            �           2606    92056    admin fk_role    FK CONSTRAINT     p   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT fk_role FOREIGN KEY (id_role) REFERENCES public.role(id_role);
 7   ALTER TABLE ONLY public.admin DROP CONSTRAINT fk_role;
       public          postgres    false    219    221    2959            �           2606    88966    bangunan fk_tangible    FK CONSTRAINT     �   ALTER TABLE ONLY public.bangunan
    ADD CONSTRAINT fk_tangible FOREIGN KEY (id_tangible) REFERENCES public.tangible(id_tangible);
 >   ALTER TABLE ONLY public.bangunan DROP CONSTRAINT fk_tangible;
       public          postgres    false    2947    210    207            �           2606    91855    post_tangible fk_tangible    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_tangible
    ADD CONSTRAINT fk_tangible FOREIGN KEY (id_post_tangible) REFERENCES public.tangible(id_tangible) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.post_tangible DROP CONSTRAINT fk_tangible;
       public          postgres    false    2947    207    213            �           2606    91898    post_intangible fk_tangible    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_intangible
    ADD CONSTRAINT fk_tangible FOREIGN KEY (id_post_intangible) REFERENCES public.tangible(id_tangible) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.post_intangible DROP CONSTRAINT fk_tangible;
       public          postgres    false    2947    207    216            �           2606    94527    tangible fk_tipe    FK CONSTRAINT     �   ALTER TABLE ONLY public.tangible
    ADD CONSTRAINT fk_tipe FOREIGN KEY (id_tipe) REFERENCES public.tipe(id_tipe) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.tangible DROP CONSTRAINT fk_tipe;
       public          postgres    false    2961    224    207            0      x�3�4�,HL�M��\1z\\\ <�6      '   #   x�3��N-J,���4�2�tJ�+I�K�c���� x;=         l   x�U�1
�0�W������6��6%D�!j������aXf�Y��j�sN`��[��z��	1ƴ�^]%�CbbA��.�>VS�!�{Q�O��6�޺����&GD��*�      -      x������ � �      *   �   x�U�=�0�g�9��r�20�#$W��T%T����B�%�9���p�7�`�����Lq�˲�5>Fշ�<h�+\8��l�r��<�b�D	n7���88�_�L�
� �T�N��H]��f�:�8�x�s�5ͼIK��H?ѕ���*؉m���Mn�Ɲ�P�����Ѽp*�lA��_���u�^�˞:U�U��$����`�c�Idx�      !   _   x�3��O�L�N,*I�Lɬ��*H�t4�2��J,OTI�KO���J,2�
�rF\�9�Ģ��TRbDƘ�� �-3���+3"e����� q �      2      x�3�,(-N,�2�LIL-J������� I��      $   e   x�3�tJ�K/�K��4�L�2��
ҹ�8�R�RA� ,f�\RT�]RZ�/�O*M)-K�pg��ŋA4X̔�;�<�lv6�7GXj�ji� �Q.�      5   7   x�3�I�K�L�I�,O�2��
�9��8=�J`2I��ŉP�:��b���� Px      7   <   x�3�tJ�K/�K��2�tJ�KI�2�.)*�.)-�2��,)-�2��N,O,*����� �]     