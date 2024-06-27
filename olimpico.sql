PGDMP  "                    |            olimpico    16.3    16.3 ,    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16626    olimpico    DATABASE        CREATE DATABASE olimpico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE olimpico;
                postgres    false            �            1259    16659    carrinho    TABLE       CREATE TABLE public.carrinho (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    produto_id integer NOT NULL,
    nome_produto character varying(50),
    imagem_produto character varying(50),
    quantidade integer,
    observacao text,
    preco_total numeric(10,2)
);
    DROP TABLE public.carrinho;
       public         heap    postgres    false            �            1259    16658    carrinho_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carrinho_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.carrinho_id_seq;
       public          postgres    false    222            �           0    0    carrinho_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.carrinho_id_seq OWNED BY public.carrinho.id;
          public          postgres    false    221            �            1259    16678    pedido    TABLE     P  CREATE TABLE public.pedido (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    data_pedido timestamp without time zone,
    forma_pagamento character varying(100),
    endereco_entrega character varying(400),
    status character varying(100),
    valor_total numeric(10,2),
    observacao text,
    itens_comprados text
);
    DROP TABLE public.pedido;
       public         heap    postgres    false            �            1259    16677    pedido_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.pedido_id_seq;
       public          postgres    false    224            �           0    0    pedido_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.pedido_id_seq OWNED BY public.pedido.id;
          public          postgres    false    223            �            1259    16650    produto    TABLE     9  CREATE TABLE public.produto (
    id integer NOT NULL,
    nome_produto character varying(200) NOT NULL,
    tipo_produto character varying(200),
    tamanho character varying(200),
    ingrediente character varying(200),
    preco numeric(10,2) NOT NULL,
    descricao text,
    imagem character varying(250)
);
    DROP TABLE public.produto;
       public         heap    postgres    false            �            1259    16649    produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public          postgres    false    220            �           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
          public          postgres    false    219            �            1259    16628    usuario    TABLE     �  CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    sobrenome character varying(100) NOT NULL,
    telefone character varying(20),
    email character varying(120) NOT NULL,
    senha character varying(100) NOT NULL,
    endereco character varying(200),
    numero_casa character varying(20),
    complemento character varying(100),
    bairro character varying(100),
    tipo_usuario character varying(20)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16627    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    216            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    215            �            1259    16639    usuarioadmin    TABLE     �   CREATE TABLE public.usuarioadmin (
    id integer NOT NULL,
    nome character varying(200),
    sobrenome character varying(200),
    email character varying(100) NOT NULL,
    senha character varying(200),
    tipo_cliente character varying(50)
);
     DROP TABLE public.usuarioadmin;
       public         heap    postgres    false            �            1259    16638    usuarioadmin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarioadmin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuarioadmin_id_seq;
       public          postgres    false    218            �           0    0    usuarioadmin_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuarioadmin_id_seq OWNED BY public.usuarioadmin.id;
          public          postgres    false    217            1           2604    16662    carrinho id    DEFAULT     j   ALTER TABLE ONLY public.carrinho ALTER COLUMN id SET DEFAULT nextval('public.carrinho_id_seq'::regclass);
 :   ALTER TABLE public.carrinho ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            2           2604    16681 	   pedido id    DEFAULT     f   ALTER TABLE ONLY public.pedido ALTER COLUMN id SET DEFAULT nextval('public.pedido_id_seq'::regclass);
 8   ALTER TABLE public.pedido ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            0           2604    16653 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            .           2604    16631 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            /           2604    16642    usuarioadmin id    DEFAULT     r   ALTER TABLE ONLY public.usuarioadmin ALTER COLUMN id SET DEFAULT nextval('public.usuarioadmin_id_seq'::regclass);
 >   ALTER TABLE public.usuarioadmin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    16659    carrinho 
   TABLE DATA           �   COPY public.carrinho (id, usuario_id, produto_id, nome_produto, imagem_produto, quantidade, observacao, preco_total) FROM stdin;
    public          postgres    false    222   �3       �          0    16678    pedido 
   TABLE DATA           �   COPY public.pedido (id, usuario_id, data_pedido, forma_pagamento, endereco_entrega, status, valor_total, observacao, itens_comprados) FROM stdin;
    public          postgres    false    224    4       �          0    16650    produto 
   TABLE DATA           q   COPY public.produto (id, nome_produto, tipo_produto, tamanho, ingrediente, preco, descricao, imagem) FROM stdin;
    public          postgres    false    220   5       �          0    16628    usuario 
   TABLE DATA           �   COPY public.usuario (id, nome, sobrenome, telefone, email, senha, endereco, numero_casa, complemento, bairro, tipo_usuario) FROM stdin;
    public          postgres    false    216   �8       �          0    16639    usuarioadmin 
   TABLE DATA           W   COPY public.usuarioadmin (id, nome, sobrenome, email, senha, tipo_cliente) FROM stdin;
    public          postgres    false    218   �9       �           0    0    carrinho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.carrinho_id_seq', 3, true);
          public          postgres    false    221            �           0    0    pedido_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pedido_id_seq', 1, true);
          public          postgres    false    223            �           0    0    produto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produto_id_seq', 34, true);
          public          postgres    false    219            �           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);
          public          postgres    false    215            �           0    0    usuarioadmin_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuarioadmin_id_seq', 1, true);
          public          postgres    false    217            >           2606    16666    carrinho carrinho_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carrinho
    ADD CONSTRAINT carrinho_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.carrinho DROP CONSTRAINT carrinho_pkey;
       public            postgres    false    222            @           2606    16685    pedido pedido_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public            postgres    false    224            <           2606    16657    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    220            4           2606    16637    usuario usuario_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_key;
       public            postgres    false    216            6           2606    16635    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    216            8           2606    16648 #   usuarioadmin usuarioadmin_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.usuarioadmin
    ADD CONSTRAINT usuarioadmin_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.usuarioadmin DROP CONSTRAINT usuarioadmin_email_key;
       public            postgres    false    218            :           2606    16646    usuarioadmin usuarioadmin_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarioadmin
    ADD CONSTRAINT usuarioadmin_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.usuarioadmin DROP CONSTRAINT usuarioadmin_pkey;
       public            postgres    false    218            A           2606    16672 !   carrinho carrinho_produto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrinho
    ADD CONSTRAINT carrinho_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id);
 K   ALTER TABLE ONLY public.carrinho DROP CONSTRAINT carrinho_produto_id_fkey;
       public          postgres    false    220    222    4668            B           2606    16667 !   carrinho carrinho_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrinho
    ADD CONSTRAINT carrinho_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);
 K   ALTER TABLE ONLY public.carrinho DROP CONSTRAINT carrinho_usuario_id_fkey;
       public          postgres    false    4662    222    216            C           2606    16686    pedido pedido_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_usuario_id_fkey;
       public          postgres    false    4662    224    216            �      x������ � �      �   �   x��P�n�0�����#�o��NE�햅��؀-��U�:�C�ce�:(
�w����(��j)M	�2w�
mK+���u����6��x<���jxI�"��j��r�>��ƯG^�Zم5��b�#GbY�J�m:�l(�&vԴ�l�s��{}�����*���aO�p�����N'?�s!g��`��%���Ԡ��G�����w��g��'��s�|�?��HfQf��gY��ʊe      �   �  x��W�n�8>�O�X���{[�P��l� EMd�hPR����b�#/�#�H�#;�օ�,��33����}iAod+YN��[VčL���+�EI=�f9�%����u�^lE���cY^}zj��;H&I�_�>�/hy�3Q	��I�%��rQPF�y��f4�$Ԭ��Z2�J�w���Q|w�}�NB����;�E��L�0��X�����W+&c��pvi;^��;4�ߛ}.�μ5g���:��ʵ*��)�7�&���P(S��h�N�t��H+n%q/�|q��c��ؠ+3k��7�~F�-D]����9hj%~n���&^SN���R���ٗ��&�9�/V/	/�U}rm�C��Ƶ�@;�4�}�����J��Ò�g޺���)���i�*!�0��*�+(h
+(��OH�P���ܑ�x|��A�[��l&1�����u�vn��RXs[!��)�ѡF�4�&�^j�hd�����Ч�����q�.���Q�Ts�J0 �\̶��B�\���g�Ϙ���dI�mG-<���T0��x< ��\S����8�7���77Z�E�MMm .���j:Q�DјU5k��vjh<� ��<��`��V�͍��7%�A�N!�V�|��.M+E��t��� 5
T���I��]�g���n�k�B�߿���N�^��v1b�Ǌ{��#_�f���P�*Iz1B~�Q�IT�N��f��_�b%8�vr{�]��m��i3tYㇾ��8۲��|�3a�����t��G080���ܛi�	(����S�����$��B�h	�C	�S�=kw8r��ƴ����#�-$;$
���D[C� �%֋�eez�И�'� m��mJ1	T�i�$mt��C�qc�-�ry����c��P�'aÓ���� jrFQ�y"�q]u'ȱl�'��-�~��������.)�m���$��|-{E�4>\M&�� U�Tq      �   ~   x�ɱ
�0 �����D�n�� T�H7��	�X�4���[A?���k8�C���휥��]�|XJ&:�2'��9k��P��@?o��2Z���ͱ.5���7q/�Q=�R���$      �   K   x�3��	uv���r�r��)�N,�+��)K�)�uH�M���K���440206�tL����,.)JL�/����� �}     