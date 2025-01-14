PGDMP  :                	    {            postgres    16rc1    16rc1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     {   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4853                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16398    tasks    TABLE     �   CREATE TABLE public.tasks (
    completed boolean,
    id integer NOT NULL,
    description text NOT NULL,
    owner integer
);
    DROP TABLE public.tasks;
       public         heap    postgres    false            �            1259    16413    tasks_id_seq    SEQUENCE     �   ALTER TABLE public.tasks ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16403    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    age integer DEFAULT 0,
    password text NOT NULL,
    email text NOT NULL,
    name text,
    token text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16420    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �          0    16398    tasks 
   TABLE DATA           B   COPY public.tasks (completed, id, description, owner) FROM stdin;
    public          postgres    false    216   p       �          0    16403    users 
   TABLE DATA           F   COPY public.users (id, age, password, email, name, token) FROM stdin;
    public          postgres    false    217   ]       �           0    0    tasks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tasks_id_seq', 28, true);
          public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 13, true);
          public          postgres    false    219            Y           2606    16412    tasks tasks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_pkey;
       public            postgres    false    216            [           2606    16410    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            W           1259    16426    fki_ref-user    INDEX     A   CREATE INDEX "fki_ref-user" ON public.tasks USING btree (owner);
 "   DROP INDEX public."fki_ref-user";
       public            postgres    false    216            \           2606    16421    tasks ref-user    FK CONSTRAINT     w   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "ref-user" FOREIGN KEY (owner) REFERENCES public.users(id) NOT VALID;
 :   ALTER TABLE ONLY public.tasks DROP CONSTRAINT "ref-user";
       public          postgres    false    4699    217    216            �   �   x�U��j�0E�W_�]w%��H��BȢ�m6BW���<8��ȏUvǐJZ�sg4��������B*�h���7g��8�{r�B%<*h����P�Ɛ?9=��'�Ӱr�Q�ܵ
���������;$�i3��*\G;^-k��z~�.�XZ�ӼU�~�6ns��(Kd�Y$�cT�M�Uh&n%��w��AZ[�8���<`�h���ίB�_��c      �   �  x���Ɏ�P@��n�x
�R���� h*� >dZf���ZT%��W7�9�s��@�a9~����l+�}mp�PaY|�x4�`&��НI(�k�a񡤯���Β!R3��9C:�'}�*����@[aj��I�����*q4Uב��xR��k�O;��W�)I��$�k�_��_�&h��Yon�FS.�]O�ƺh��L:��֦��k����,�,ha�����c��r��"Ӳ���/ľ�/��ւ�AO�u��F�OD����~�?Yo�s8�@�Ƿ���G)�`
���
[�oG�}�[�h�6���T*}G�P�״��������a�B�`��F,ȸ���PO	Ǯ/%+qj��m�bU���S9�H�m�4�o_�Z�Y�E���%�G     