PGDMP         5                {            scientificlaba    15.2    15.2 $    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    16824    scientificlaba    DATABASE     �   CREATE DATABASE scientificlaba WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE scientificlaba;
                postgres    false            �            1259    27919    departments    TABLE     z   CREATE TABLE public.departments (
    id_departments integer NOT NULL,
    departments_name character varying NOT NULL
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    27981    develop    TABLE     �   CREATE TABLE public.develop (
    id_develop integer NOT NULL,
    fk_departments_develop integer,
    develop_name character varying NOT NULL
);
    DROP TABLE public.develop;
       public         heap    postgres    false            �            1259    27968    device    TABLE     �   CREATE TABLE public.device (
    id_device integer NOT NULL,
    fk_departments_device integer,
    device_name character varying NOT NULL,
    device_cost integer DEFAULT 100
);
    DROP TABLE public.device;
       public         heap    postgres    false            �            1259    27955 	   materials    TABLE     �   CREATE TABLE public.materials (
    id_materials integer NOT NULL,
    fk_departments_materials integer,
    materials_name character varying NOT NULL,
    materials_cost integer DEFAULT 100,
    materials_price_delivery integer
);
    DROP TABLE public.materials;
       public         heap    postgres    false            �            1259    27945    pass    TABLE     h   CREATE TABLE public.pass (
    id_pass integer NOT NULL,
    fk_staff_pass integer,
    pr_data date
);
    DROP TABLE public.pass;
       public         heap    postgres    false            �            1259    27928    post    TABLE     �   CREATE TABLE public.post (
    id_post integer NOT NULL,
    fk_staff_post integer,
    fk_departments_post integer,
    post_name character varying NOT NULL,
    post_salary integer NOT NULL,
    parent_id integer,
    id_id integer
);
    DROP TABLE public.post;
       public         heap    postgres    false            �            1259    27999    proba    TABLE     �   CREATE TABLE public.proba (
    id_pr integer NOT NULL,
    data_write date,
    wwrite character varying NOT NULL,
    f_name character varying,
    sur_name character varying
);
    DROP TABLE public.proba;
       public         heap    postgres    false            �            1259    27910    staff    TABLE     G  CREATE TABLE public.staff (
    id_staff integer NOT NULL,
    f_name character varying NOT NULL,
    s_name character varying NOT NULL,
    b_day date NOT NULL,
    id_pr integer,
    CONSTRAINT staff_f_name_check CHECK (((f_name)::text <> ''::text)),
    CONSTRAINT staff_s_name_check CHECK (((s_name)::text <> ''::text))
);
    DROP TABLE public.staff;
       public         heap    postgres    false            -          0    27919    departments 
   TABLE DATA           G   COPY public.departments (id_departments, departments_name) FROM stdin;
    public          postgres    false    215   �+       2          0    27981    develop 
   TABLE DATA           S   COPY public.develop (id_develop, fk_departments_develop, develop_name) FROM stdin;
    public          postgres    false    220   ,       1          0    27968    device 
   TABLE DATA           \   COPY public.device (id_device, fk_departments_device, device_name, device_cost) FROM stdin;
    public          postgres    false    219   h,       0          0    27955 	   materials 
   TABLE DATA           �   COPY public.materials (id_materials, fk_departments_materials, materials_name, materials_cost, materials_price_delivery) FROM stdin;
    public          postgres    false    218   -       /          0    27945    pass 
   TABLE DATA           ?   COPY public.pass (id_pass, fk_staff_pass, pr_data) FROM stdin;
    public          postgres    false    217   �-       .          0    27928    post 
   TABLE DATA           u   COPY public.post (id_post, fk_staff_post, fk_departments_post, post_name, post_salary, parent_id, id_id) FROM stdin;
    public          postgres    false    216   Q.       3          0    27999    proba 
   TABLE DATA           L   COPY public.proba (id_pr, data_write, wwrite, f_name, sur_name) FROM stdin;
    public          postgres    false    221   �.       ,          0    27910    staff 
   TABLE DATA           G   COPY public.staff (id_staff, f_name, s_name, b_day, id_pr) FROM stdin;
    public          postgres    false    214   �/       �           2606    27927 ,   departments departments_departments_name_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_departments_name_key UNIQUE (departments_name);
 V   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_departments_name_key;
       public            postgres    false    215            �           2606    27925    departments departments_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id_departments);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    215            �           2606    27989     develop develop_develop_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.develop
    ADD CONSTRAINT develop_develop_name_key UNIQUE (develop_name);
 J   ALTER TABLE ONLY public.develop DROP CONSTRAINT develop_develop_name_key;
       public            postgres    false    220            �           2606    27987    develop develop_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.develop
    ADD CONSTRAINT develop_pkey PRIMARY KEY (id_develop);
 >   ALTER TABLE ONLY public.develop DROP CONSTRAINT develop_pkey;
       public            postgres    false    220            �           2606    27975    device device_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_pkey PRIMARY KEY (id_device);
 <   ALTER TABLE ONLY public.device DROP CONSTRAINT device_pkey;
       public            postgres    false    219            �           2606    27962    materials materials_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id_materials);
 B   ALTER TABLE ONLY public.materials DROP CONSTRAINT materials_pkey;
       public            postgres    false    218            �           2606    27949    pass pass_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pass
    ADD CONSTRAINT pass_pkey PRIMARY KEY (id_pass);
 8   ALTER TABLE ONLY public.pass DROP CONSTRAINT pass_pkey;
       public            postgres    false    217            �           2606    27934    post post_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id_post);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public            postgres    false    216            �           2606    28005    proba proba_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.proba
    ADD CONSTRAINT proba_pkey PRIMARY KEY (id_pr);
 :   ALTER TABLE ONLY public.proba DROP CONSTRAINT proba_pkey;
       public            postgres    false    221            �           2606    27918    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    214            �           2606    27990 +   develop develop_fk_departments_develop_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.develop
    ADD CONSTRAINT develop_fk_departments_develop_fkey FOREIGN KEY (fk_departments_develop) REFERENCES public.departments(id_departments);
 U   ALTER TABLE ONLY public.develop DROP CONSTRAINT develop_fk_departments_develop_fkey;
       public          postgres    false    220    3209    215            �           2606    27976 (   device device_fk_departments_device_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fk_departments_device_fkey FOREIGN KEY (fk_departments_device) REFERENCES public.departments(id_departments);
 R   ALTER TABLE ONLY public.device DROP CONSTRAINT device_fk_departments_device_fkey;
       public          postgres    false    219    3209    215            �           2606    27963 1   materials materials_fk_departments_materials_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_fk_departments_materials_fkey FOREIGN KEY (fk_departments_materials) REFERENCES public.departments(id_departments);
 [   ALTER TABLE ONLY public.materials DROP CONSTRAINT materials_fk_departments_materials_fkey;
       public          postgres    false    3209    215    218            �           2606    27950    pass pass_fk_staff_pass_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pass
    ADD CONSTRAINT pass_fk_staff_pass_fkey FOREIGN KEY (fk_staff_pass) REFERENCES public.staff(id_staff);
 F   ALTER TABLE ONLY public.pass DROP CONSTRAINT pass_fk_staff_pass_fkey;
       public          postgres    false    217    3205    214            �           2606    27940 "   post post_fk_departments_post_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_fk_departments_post_fkey FOREIGN KEY (fk_departments_post) REFERENCES public.departments(id_departments);
 L   ALTER TABLE ONLY public.post DROP CONSTRAINT post_fk_departments_post_fkey;
       public          postgres    false    215    3209    216            �           2606    27935    post post_fk_staff_post_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_fk_staff_post_fkey FOREIGN KEY (fk_staff_post) REFERENCES public.staff(id_staff);
 F   ALTER TABLE ONLY public.post DROP CONSTRAINT post_fk_staff_post_fkey;
       public          postgres    false    216    3205    214            -   P   x�32641�0�bӅ-�^حpaɅ��;�L͌�Pe�e� 1P�� (�����6\�ta7P�^��V�=... �~2E      2   P   x���4�42641༰��/,������@r�}�.캰����҈�*#�*cNS3c#���@U{p�eBP�W� AUM      1   �   x�u�1�0�ٹ(N�w�0��� b`/��\��F8JE$$�D��f-�*k	g�x��w�Y�}j�X��
Ƒ�8���E���������i���D��T�0�%[=�������!r9��j�4��':�p� ��Y��G.$��c>��m�      0   �   x�U�;�0�g�� �i�%8Bbaaa��a �#�GEUg�o�]��!C��������@{j�M. }���3h�4=��>t�w��*p�Z+�O�I�J��7��`��<.@���r:KLӝD<�"�a�"tw��G�:�U��x���
��D�
��[��ɥ�j�LQ���gɩ��Mw�K�nҫ�j
��9�.{��b2��42�h�}c��o~�      /   D   x�-���@�wҋ������:8K<w���"���*�B�-�?z,cT�,+���*�+3?��      .   �   x�m���PE��)� �}�1� �$A�P!Jjz>

��
��D�X�-Y��P-
���g^9ڎ��5���-{쭱���
A22b
�7��\�����X҉�PQ�Ͼ��mx�dֺ�F9SQ""�Lѱ��{y>��,��yg�u���HR-E���]�      3   �   x�uϱ�0������|��-� ˄�H�40A�@p���F�)H����k^����4�S��,f<�.=&�Lw�����1�����!,o,QSw����sRH�$�ݛ,�����q��r��;Xk��o�/      ,   �   x�M�M
�@�י�Df��z
O��؂[u� �d�j���r#�� �,��^�-z�tt�0Q�>c�a_P�s��Ij�*�Y#Z���X��+nl���QhdO�k���G�[�䄧z:9.HrPV;��7�сCd�^/��$�M��ts���r��:�l     