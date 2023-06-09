PGDMP     1    "            
    y            sistema_avicultura    12.9    12.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    sistema_avicultura    DATABASE     �   CREATE DATABASE sistema_avicultura WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
 "   DROP DATABASE sistema_avicultura;
                postgres    false            �            1259    16396    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    login character varying(30) NOT NULL,
    senha character varying(40) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16394    admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.admin_id_seq;
       public          postgres    false    203                       0    0    admin_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.admin_id_seq OWNED BY public.usuario.id;
          public          postgres    false    202            �            1259    16404    estoque    TABLE     �   CREATE TABLE public.estoque (
    id integer NOT NULL,
    produto character varying(50) NOT NULL,
    marca character varying(50) NOT NULL,
    quantidade integer NOT NULL,
    preco_unid double precision NOT NULL,
    data date NOT NULL
);
    DROP TABLE public.estoque;
       public         heap    postgres    false            �            1259    16402    estoque_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estoque_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.estoque_id_seq;
       public          postgres    false    205                       0    0    estoque_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.estoque_id_seq OWNED BY public.estoque.id;
          public          postgres    false    204            �
           2604    16407 
   estoque id    DEFAULT     h   ALTER TABLE ONLY public.estoque ALTER COLUMN id SET DEFAULT nextval('public.estoque_id_seq'::regclass);
 9   ALTER TABLE public.estoque ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16399 
   usuario id    DEFAULT     f   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                      0    16404    estoque 
   TABLE DATA           S   COPY public.estoque (id, produto, marca, quantidade, preco_unid, data) FROM stdin;
    public          postgres    false    205   U       
          0    16396    usuario 
   TABLE DATA           3   COPY public.usuario (id, login, senha) FROM stdin;
    public          postgres    false    203   r                  0    0    admin_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.admin_id_seq', 1, true);
          public          postgres    false    202                       0    0    estoque_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.estoque_id_seq', 1, true);
          public          postgres    false    204            �
           2606    16401    usuario admin_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT admin_pkey;
       public            postgres    false    203            �
           2606    16409    estoque estoque_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.estoque DROP CONSTRAINT estoque_pkey;
       public            postgres    false    205                  x������ � �      
   =   x���� ��l���.4�'�H�/s'���|�bf�T�Q��	+�T��na�Y�;���r     