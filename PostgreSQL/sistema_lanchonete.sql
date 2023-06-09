PGDMP         #            
    y            sistema_lanchonete    12.9    12.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16410    sistema_lanchonete    DATABASE     �   CREATE DATABASE sistema_lanchonete WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
 "   DROP DATABASE sistema_lanchonete;
                postgres    false            �            1259    16421    estoque    TABLE     �   CREATE TABLE public.estoque (
    id integer NOT NULL,
    produto character varying(50) NOT NULL,
    quantidade integer NOT NULL,
    preco_unidade double precision NOT NULL,
    data date NOT NULL
);
    DROP TABLE public.estoque;
       public         heap    postgres    false            �            1259    16419    estoque_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estoque_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.estoque_id_seq;
       public          postgres    false    205                       0    0    estoque_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.estoque_id_seq OWNED BY public.estoque.id;
          public          postgres    false    204            �            1259    16413    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    login character varying(30) NOT NULL,
    senha character varying(40) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16411    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    203                       0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    202            �
           2604    16424 
   estoque id    DEFAULT     h   ALTER TABLE ONLY public.estoque ALTER COLUMN id SET DEFAULT nextval('public.estoque_id_seq'::regclass);
 9   ALTER TABLE public.estoque ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16416 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                      0    16421    estoque 
   TABLE DATA           O   COPY public.estoque (id, produto, quantidade, preco_unidade, data) FROM stdin;
    public          postgres    false    205   @       
          0    16413    usuario 
   TABLE DATA           3   COPY public.usuario (id, login, senha) FROM stdin;
    public          postgres    false    203   ]                  0    0    estoque_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.estoque_id_seq', 1, true);
          public          postgres    false    204                       0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);
          public          postgres    false    202            �
           2606    16426    estoque estoque_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.estoque DROP CONSTRAINT estoque_pkey;
       public            postgres    false    205            �
           2606    16418    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    203                  x������ � �      
   =   x���� ��l���.4�'�H�/s'���|�bf�T�Q��	+�T��na�Y�;���r     