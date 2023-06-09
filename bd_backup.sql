PGDMP                         {            blog_noticias    12.13    12.13 -    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    40181    blog_noticias    DATABASE     �   CREATE DATABASE blog_noticias WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE blog_noticias;
                postgres    false            �            1259    40192 
   categorias    TABLE     g   CREATE TABLE public.categorias (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    40190    categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categorias_id_seq;
       public          postgres    false    205            =           0    0    categorias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;
          public          postgres    false    204            �            1259    40221    comentarios    TABLE     �   CREATE TABLE public.comentarios (
    id integer NOT NULL,
    contenido character varying(1000) NOT NULL,
    id_usuario integer NOT NULL,
    id_publicacion integer NOT NULL,
    fecha date DEFAULT now() NOT NULL
);
    DROP TABLE public.comentarios;
       public         heap    postgres    false            �            1259    40219    comentarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comentarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.comentarios_id_seq;
       public          postgres    false    209            >           0    0    comentarios_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.comentarios_id_seq OWNED BY public.comentarios.id;
          public          postgres    false    208            �            1259    40243    like_dislikes    TABLE     �   CREATE TABLE public.like_dislikes (
    id integer NOT NULL,
    islike boolean,
    id_usuario integer NOT NULL,
    id_publicacion integer NOT NULL
);
 !   DROP TABLE public.like_dislikes;
       public         heap    postgres    false            �            1259    40241    like_dislikes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.like_dislikes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.like_dislikes_id_seq;
       public          postgres    false    211            ?           0    0    like_dislikes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.like_dislikes_id_seq OWNED BY public.like_dislikes.id;
          public          postgres    false    210            �            1259    40200    publicaciones    TABLE       CREATE TABLE public.publicaciones (
    id integer NOT NULL,
    titulo character varying(255) NOT NULL,
    contenido character varying(1000) NOT NULL,
    fecha date NOT NULL,
    id_categoria integer NOT NULL,
    id_usuario integer NOT NULL,
    imagen character varying(255)
);
 !   DROP TABLE public.publicaciones;
       public         heap    postgres    false            �            1259    40198    publicaciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publicaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.publicaciones_id_seq;
       public          postgres    false    207            @           0    0    publicaciones_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.publicaciones_id_seq OWNED BY public.publicaciones.id;
          public          postgres    false    206            �            1259    40184    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(150) NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    40182    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    203            A           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    202            �
           2604    40195    categorias id    DEFAULT     n   ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);
 <   ALTER TABLE public.categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    40224    comentarios id    DEFAULT     p   ALTER TABLE ONLY public.comentarios ALTER COLUMN id SET DEFAULT nextval('public.comentarios_id_seq'::regclass);
 =   ALTER TABLE public.comentarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    40246    like_dislikes id    DEFAULT     t   ALTER TABLE ONLY public.like_dislikes ALTER COLUMN id SET DEFAULT nextval('public.like_dislikes_id_seq'::regclass);
 ?   ALTER TABLE public.like_dislikes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    40203    publicaciones id    DEFAULT     t   ALTER TABLE ONLY public.publicaciones ALTER COLUMN id SET DEFAULT nextval('public.publicaciones_id_seq'::regclass);
 ?   ALTER TABLE public.publicaciones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    40187    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            0          0    40192 
   categorias 
   TABLE DATA           0   COPY public.categorias (id, nombre) FROM stdin;
    public          postgres    false    205   �4       4          0    40221    comentarios 
   TABLE DATA           W   COPY public.comentarios (id, contenido, id_usuario, id_publicacion, fecha) FROM stdin;
    public          postgres    false    209   �4       6          0    40243    like_dislikes 
   TABLE DATA           O   COPY public.like_dislikes (id, islike, id_usuario, id_publicacion) FROM stdin;
    public          postgres    false    211   H5       2          0    40200    publicaciones 
   TABLE DATA           g   COPY public.publicaciones (id, titulo, contenido, fecha, id_categoria, id_usuario, imagen) FROM stdin;
    public          postgres    false    207   q5       .          0    40184    usuarios 
   TABLE DATA           ?   COPY public.usuarios (id, nombre, email, password) FROM stdin;
    public          postgres    false    203   �5       B           0    0    categorias_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categorias_id_seq', 4, true);
          public          postgres    false    204            C           0    0    comentarios_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.comentarios_id_seq', 3, true);
          public          postgres    false    208            D           0    0    like_dislikes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.like_dislikes_id_seq', 2, true);
          public          postgres    false    210            E           0    0    publicaciones_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publicaciones_id_seq', 3, true);
          public          postgres    false    206            F           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);
          public          postgres    false    202            �
           2606    40197    categorias categorias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    205            �
           2606    40230    comentarios comentarios_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.comentarios DROP CONSTRAINT comentarios_pkey;
       public            postgres    false    209            �
           2606    40248     like_dislikes like_dislikes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.like_dislikes
    ADD CONSTRAINT like_dislikes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.like_dislikes DROP CONSTRAINT like_dislikes_pkey;
       public            postgres    false    211            �
           2606    40208     publicaciones publicaciones_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.publicaciones
    ADD CONSTRAINT publicaciones_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.publicaciones DROP CONSTRAINT publicaciones_pkey;
       public            postgres    false    207            �
           2606    40189    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    203            �
           2606    40236 +   comentarios comentarios_id_publicacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_id_publicacion_fkey FOREIGN KEY (id_publicacion) REFERENCES public.publicaciones(id);
 U   ALTER TABLE ONLY public.comentarios DROP CONSTRAINT comentarios_id_publicacion_fkey;
       public          postgres    false    209    2724    207            �
           2606    40231 '   comentarios comentarios_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 Q   ALTER TABLE ONLY public.comentarios DROP CONSTRAINT comentarios_id_usuario_fkey;
       public          postgres    false    2720    209    203            �
           2606    40254 /   like_dislikes like_dislikes_id_publicacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.like_dislikes
    ADD CONSTRAINT like_dislikes_id_publicacion_fkey FOREIGN KEY (id_publicacion) REFERENCES public.publicaciones(id);
 Y   ALTER TABLE ONLY public.like_dislikes DROP CONSTRAINT like_dislikes_id_publicacion_fkey;
       public          postgres    false    211    2724    207            �
           2606    40249 +   like_dislikes like_dislikes_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.like_dislikes
    ADD CONSTRAINT like_dislikes_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 U   ALTER TABLE ONLY public.like_dislikes DROP CONSTRAINT like_dislikes_id_usuario_fkey;
       public          postgres    false    211    2720    203            �
           2606    40209 -   publicaciones publicaciones_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.publicaciones
    ADD CONSTRAINT publicaciones_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id);
 W   ALTER TABLE ONLY public.publicaciones DROP CONSTRAINT publicaciones_id_categoria_fkey;
       public          postgres    false    2722    205    207            �
           2606    40214 +   publicaciones publicaciones_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.publicaciones
    ADD CONSTRAINT publicaciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 U   ALTER TABLE ONLY public.publicaciones DROP CONSTRAINT publicaciones_id_usuario_fkey;
       public          postgres    false    207    203    2720            0   4   x�3���/�L�L,V�KL���K�I-�2B�f敤�!���j0��!F��� Z�#�      4   Y   x�3��4�4�4202�50".#N�������b��T��D����ĢD'%���$1%���Y�1�g^IjQjq"�Rȃ�*2FV���� `��      6      x�3�,�4�4�2�F\1z\\\ $W      2   {   x�3���/�L�L,VHIUH���I��Cq��� �!�1gbR����n^brf~^bN��^VA:��F�p&Z[�� �2e�0*3�$�&�Z�[�`#NSN�D�Tcs]UP���qqq ��L�      .   Q   x�3�,���鹉�9z�����F�&�\F�iE�y`CΘ� � L��q�p�ML�0�˔�(3=L8d䗠J��qqq �*     