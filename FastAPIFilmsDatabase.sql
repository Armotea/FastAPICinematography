PGDMP                     
    {            FastAPIFilmsDatabase    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19303    FastAPIFilmsDatabase    DATABASE     s   CREATE DATABASE "FastAPIFilmsDatabase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
 &   DROP DATABASE "FastAPIFilmsDatabase";
                postgres    false            �            1259    19590    cinematography    TABLE     �   CREATE TABLE public.cinematography (
    id integer NOT NULL,
    name character varying,
    genre_id integer,
    description character varying,
    director character varying,
    variety character varying,
    image character varying
);
 "   DROP TABLE public.cinematography;
       public         heap    postgres    false            �            1259    19589    cinematography_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cinematography_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cinematography_id_seq;
       public          postgres    false    212            �           0    0    cinematography_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cinematography_id_seq OWNED BY public.cinematography.id;
          public          postgres    false    211            �            1259    19570    genres    TABLE     }   CREATE TABLE public.genres (
    id integer NOT NULL,
    genre_name character varying,
    description character varying
);
    DROP TABLE public.genres;
       public         heap    postgres    false            �            1259    19569    genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    210                        0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          postgres    false    209            b           2604    19593    cinematography id    DEFAULT     v   ALTER TABLE ONLY public.cinematography ALTER COLUMN id SET DEFAULT nextval('public.cinematography_id_seq'::regclass);
 @   ALTER TABLE public.cinematography ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            a           2604    19573 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    19590    cinematography 
   TABLE DATA           c   COPY public.cinematography (id, name, genre_id, description, director, variety, image) FROM stdin;
    public          postgres    false    212   r       �          0    19570    genres 
   TABLE DATA           =   COPY public.genres (id, genre_name, description) FROM stdin;
    public          postgres    false    210   L                  0    0    cinematography_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cinematography_id_seq', 1, false);
          public          postgres    false    211                       0    0    genres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genres_id_seq', 1, false);
          public          postgres    false    209            g           2606    19597 "   cinematography cinematography_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.cinematography
    ADD CONSTRAINT cinematography_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.cinematography DROP CONSTRAINT cinematography_pkey;
       public            postgres    false    212            d           2606    19577    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    210            h           1259    19613    ix_cinematography_id    INDEX     M   CREATE INDEX ix_cinematography_id ON public.cinematography USING btree (id);
 (   DROP INDEX public.ix_cinematography_id;
       public            postgres    false    212            e           1259    19578    ix_genres_id    INDEX     =   CREATE INDEX ix_genres_id ON public.genres USING btree (id);
     DROP INDEX public.ix_genres_id;
       public            postgres    false    210            i           2606    19608 +   cinematography cinematography_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cinematography
    ADD CONSTRAINT cinematography_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(id);
 U   ALTER TABLE ONLY public.cinematography DROP CONSTRAINT cinematography_genre_id_fkey;
       public          postgres    false    210    212    3172            �      x��Y��F�矫?�1E� 	�7� �+HFG0�� 	w>i�-{���n�e|݋�oO߉�N�T����O��
��L��Ȓ܊���<�Av�Ē�HR�;���;�s�pv���K&|t�?�����������
�y�~>ߟ���>����=;u�c��7���k���tt��E?��=�_�c�F/��t����k�bK_��_>p���u�=�_�=�{��9�缄���=�s�u�^��5ސ��o�>C�ݹЙ[�ģ��xB�5<d���t���W��X�{cAKp�������0����/N�/��S8��
��)���)�-��@�xu��߅�.DǋFz�=#/¸\x���aHhj���x�����re�?����#|{���W0m�f���^Zc�w�u������`�����������r�����3���'���i����<�+��<������>�_��g3c���?^.��hl�����9�Xf8M�Y��c���}]��q�'rI��t�i
�Ȩ����e��-�Y����j;����&ԗ�nH�Ǔ\��a�\��T_K.ͥΦ�5=���lke6�:���9������r�[mKw��U&�`d�z�Ex�O��xZ�F�V��������t�=֧�A|��T"��!���fp���ڴ*��Bȅ�d �-�N&�z����=%�^3��9�j�ѐ۳�8h���Y��R-Ҋ��FT$3��֪��'K�A+��cFitjUr'�������ޠ?m�{�����
Ӥɯ�9|j��*���R����Ű�e�R��碒VU�J�Pڸk�E0�p�K��\��JMש����̄;ڴ�O�[�`I]w�bi:�T��<ǌ�Q-���vI	h���i&��V�o0���MM�qr��f�L-+������f'�U�)3'�~��#}i�[K&,�g�Z"�Y��U�V���Yw�9���LXNtV�I�{�ZH-�&�
���s�Z�N��7|�W�qJ~j����:��<��z�*�B~m�=���f��B�*���2��;�hYV�BCF��Ԛ]0�A�=l��O�LF�U+�_Y��\0)�3�7B�؋v6bo^ﵳ�:�t^o�B��M��L)dV���s�t<)�u�����xݷ�ͅ�Y���:��<A��.��|NXָa-��'#��ɯ&3���M1�Z�[�.��d��N;���kƃY�7���Z@���銖�m��_rY1���*'s�zz�ʓ^���K��t�n�U����lk��I�΍��D7]���g��Ŝ�:��h��,����U�����M�vq���EE2
�h=�g4U���H;<��r�V��Hw�0+�n�+�������q����c`,�u`��V�qI�2�`��B�8��W%Vi��j�b���:�)�R�~����J��f��|a�遘:T�ܺ<�-�m)�l(�8öC�$[�2ZMg;���i�i������+S�Q6dEd�kC/�B*[W�Q/Ǆ�0��x�?2�+w[7Z�y����i=�W�BiQ<���E���8����Ǜ�L�d�6��cј�n\�S�4��nvV����L���?`�y�*��"��]��kVˎ+�0�a@�w�!M����p/���dR�����.�z�*1�rr¯*9iRt��r�'���(�R��J(��CE5�?��{m7o�Ay=f�i��*�B�2��aP�.}R2Qoi�ZKmf�_��;���\a����04��Y�.͵|��`��;��g)��[�95)�o��u'��Z���2;H�z�0�w3ej�F!R�ݕP"��#K%9+��Y��({"B<X\p���.[�h{���{�Aϟ�7Sor|Xl*��j�����kEI�.|j��g9&�i��,��yi��"�7:��w�nM2�����+�a��� #L��x����K!:�����3��B��Z*�a-ŧ[�T0�f��Xd83�rMi����;>0:�ne��g����yCa�}���I3h��`��/�f"��֌�I%�i>®��Z	E�@$���|���y��U~����A5ΥL52���&��s�-�ص��U��R�uë.{������mc�攲X��;]�����:\d7�����,?���\�㌰oď���&�5=��S�hj��bL�wھ��������߈���d���m�*J%>v��7��g��RĊ���m�S9�Lz�0�֍D��$�k��\���4���H��р^��d'�w�r����R�痓����v#CI���{��Y�6fX�+�q-Xυ���b:�݃Y8��5Zf�zDa��Y�7+>q���Eh�φ>!��L�fx��Xs-�J�����C_���k�^�ih�3r���"�2��~:�ʵ"�g�\�S\AJڹ.?����&ٍ�c��9�}q�7b���7���;��G�\x�p�ez$;Ac4C�R*���'��QQϻ즻��B�^oX�	m�͒>嚓�,�j-�3��*��*�"�)J�NŝeUY4??΄���7�Sӳ����O��2,{ғ�4ld}�~�mx���g��x2���0��lF�p���ڹ�F�+��ج&�t�M�g�qC����xUP�ћώ9.5VV��ƌ���0���s>K�XQeUS���^e�]��M ��W6������.W�pYL��a������qQu��aU]K��������r�j^���n��_�k���JXa�D4ԱGm�bM.β����^z�c9�^�1���C�Il<�m��;��*�r�gEA먬Qm�����t)�mdL�83��K1�_t��f`��e�yJ�Rޘ�6��7��L7����m����U���ע�M���4��~v8�q�����0�I��t_s\s+k��[�f͟P��h��:1���-��V!>
ɭX��2ōT��=�4�v5%�����(�f�Fڌ�φ���̲B��'d��W�.C��-�ד�rj�Sv�/�ٶZ�ʜ�	yfٹl��r�)秣U��0z+.����O��r�G���Ȧ���,��ҿ`N���A���v����;A�t�I�?2� ��?'ЁOy����&�1�`v�Xu����G�!��W��g�]�O���+�<eJaʳ���az��@��a$�W�׻�!�	̺9��O���!t�Wք�}eM�����3��+"��t�0�>qQCw~�V������k��.�U��}�^F�u�����:��>2��p
������*8��Kt�?�Y��@�|����wh����ߣ�?��d�;u���w�w8wY@����,�"��;|	B�xZdAw�hx �0'�� "ŷByjM" �Gs�7��E��7��K`bk�x.�4���� �
Ӻ�l�I-V��x���Z�fp�e}C�+�3�P(�	�4�tH�!M�4�tH�!M�4�tH�=��?a���%�a��N�@�v~�9M.n�� ��̂��à	PbAM�ᗿ>uD����&�I��/in����f���p��(;'Dw��E̝]�r��d���#�$w�h��B� $"���S��o`D����)��߹ M{Es�p��@R[8��z�B�g����,����d%�ǀ��s�2	�}a�$=
Dg9���!�yC{����0�g]���[G<0��xE��yҔ�抯��	m��vz4x�z��9�<.\��>z��s�f�HT��!��s�s����
`NY�@� =GK���ǘ��C�h-_�,��)�9�[F�TW��=唘(�	!(JzC7��l$�פtϭ�"z���ã�:<��ã�:<��ã���G'��Y'HQ>�٪+ ���N��S����0�`�(֍"���'���E��;��c�%��`l�[�-n�.��̈_c��e���s�Z���� }��v�W|p�U*�|��墠x	�v���a�-$+i���p���&3���q��zާ�b���B���GYٳcv}C	� �8o(��&4~Y�3��l�+YW�gn+eJ���a- /^���ŭ� h��O�#����2bk�wXL`g7�	��z��a@[4    ��>�����x��a=��xJe�;£����;!;ol��7�H9?�l@��j�����3X�7�X�)��? ��'x-A�L��!�xP�g#՗�
S���#$�5%�Zb N�bP7�i��9vT�Y��v3U=[r��b� v��b� v��b�������͏az�7`*K�K��8��"�q�	���IXLt�Y~���(wF��C��`���/��{�b�<��	��3B�'8��7H�a�x��g����@���b���>n�zP
�O�k�b�c����G��h2����xk�����H�Ń8#k��8��k-�š��a�, ǐyIfMKkaɺ���ϭ^��_Q<��Nf�s�d��=ƔN�R!+KS�W�xN�*V��.��j�#,|(�E�s6U0���<������o�_hH��ji��,Л���<6�88����8N�� w�������:b�q���H���W�L��5�l�ʋ�ސ����):Wkx)=YK��`����:��`����:��`������bՃ��6��BZ�h��=Ù[��o@iiA��X�ks�%���&;��l�58����x$F|B1�5M�B=&��� C��(� ,����������w���T�
�t��rWI�"d���%��߁`�7侷�Oѡ������� �}BV�~ƙ:��=?R���ťv:��	�����%���qs�c*g"��~NM��5IJ!06^��f��=G��
r�vE�9�s/���c���kE��&� rR�89 ����u�#~	/�A},��nBT��V�-����	S��5��u6�G:�X�_���&�`L7J3��"���n�K�׃�2�pH�!Q�DuH�!Q�DuH�!Q�D�C�,��'�(faø���|P��#�˱0���+�Ą�0M��U�W��^Q��+���Y�Y��S�^]m)N7^"b��`��+�C�;��� a�h�荕�#��,��:��g��P{EL�0��L)u���"K��$Mo���`�Ft��:,] <�����������5)����-࿀{�<��YSď��fO߆�-d���t�}j��-Z�+⛌��O0��r���5v���b3)��h�����P �B�72ݐ�Z_��G���u���:�X�[�9�瀟~�9�瀟~�9���{�q�� �%��d�c���Ժ��E?^��4� =���w�������H`m{���N'=$�Pn]w_Y~���s ,"x���+t�s��2��B#����ޟ="�?�������5�����*.1B�̖$�)g��H�+$:�� A�(�$3%�Q�<��nwov���
vCF���3j�d5<ye�/ �_b֤%��MI��|_C�ꑏ� �s��<;$s$t�%���<�#����0Ԍ�����4�j���	㵼�̧h�����'�BY��%��G9#}@�� ���t��&H��d!=ܲ,wF:gVc\�֏�ՂV�iF��n�+��U%�`����:�m���r���:0�����:0�����:0�>E0�W���7�������$�;�N�4�܉�TZ����w_C�ILo��j��'@�8����n7������K���K*ߐ�C�PZ>�$�.IR��Šu�����d����u�v�Z\�\(F@\�	�7��Q�;��_�У��C����#
�����W�z;2�w�@�_������	��g�aG.7.P�N�X R*��6���ag\�r�T��}[k�I6����t�m:�栚�j�9�栚�j�9����P�?���v���2n-/�W�X����1�p��q�j�0�\S5�kRM�������2�-���G-M0Y�[PC��	h�
��h�H���<h��G�|GE�v�逸��EKLMA�%���.���["���EG
�:;
�ظ�b�<�$5ya��B~��8d�pz��s����`o�@o@ojy��.@��,/��f:��Zk�l��'��e�ϤIE��${��dto��������sh��g�0N�=;�ך�"飡mM]G�����`��_X՜���/`r�ݗt-�vħ�{��B�݉�}MlyhS�KRV��h-�!��?-p�%>�gV� 2����(elC�)�k<�����vT�}�\f�S���3�*'����(0L�w	�dq�����{��|f��j�ƨ �o�@v �d�@v �d�@~��s���*���ї����%��k�9L��z�G'����Q��3��	�>R�$N���D��b�/���%=�����ӥUsy�|<{���i���/�F7�vѮ/�m�,>��4��D�Ҋ��^$A�H��5fDDZgD�zI�q��m�����@>�s���D�^Zv��و�+���&���ͮ!���,�\pyԼ���9���"�J���"9$�������u��%�2��D,M{�@]��<��h�91	�X��.��1�-�"xn��Ǫc�Hg��o�����U��QW4 �zI؞��UIzC97�!�q`����kR����7�ߟҵ��:ݝu�7t��E���B�ig[#���8��ul��N����d�������iY�isl���
��u=�:
�� ج33�y�RG�J��Z(�S����6;��`���6;��`���6��Yh�A�dm��=�y�93�E�A�E������gИco��$m9h�M%Б#��R������	� l(t�\~[h �w���m3rEkEq�M0��B���+��KT�v��n5J0�E����sY^��,���i*��Al��H��"�s��_T��Xp&�K��X�H��WȾ59�Cq��B}۟�ʆ]G�G��ך���g�$�������% �.�m�(�N�'P��Q�QYU0�nI�@K|,6!�I�󺼷��4��̈́a6ئ����֎*` ?�e}Eð�/i���o��>;.�����&��ox~�+fb�ca���΃��s�q� ��8��0�ݑE���󽦲��唌;�>!z���l��Bࣖ9�CO!��d��9]�ez<�-����Sp�$���������ᭆ5�����d���*��0T���M�r������zb�M(5�a�x0X�rP��}�/��6�b�u�t�ޡz���w�ޡz���w�ޡz���G��>������Hj��zTW�*0�}B�L����?x� *�>��}�{�zܐ��#���"�~��Z�bI��{C�t׷�����:PY���=?�i�Uդ��S�$2Ѐ�?�;���o�?]��s|̹p�8�B�f�Б��V�稭�c7��r_��0[pܳ������
�y�v�l�"����Q3"���mR<Rt�r�!�)@�/�/	U��qܔ�]�h��3B�`lu�n���q��=E��4�|k�h�����X�aу�둋�i��8}�z�>$�`��+�?imdw�=�p�ےk؏�ʳ��L�� _�Y~Xf��Tv�NmĽ�1�zD�x���� �anI�Fc�_�-n�Azt��=������/�$�fE�@�����~�� ��y�d�@��]�FJ�qX�D[���]j���˽V��%�3�<� |�{2A؇��DO�P�~��:�^=e����%���#l�-��D�^�h�ݺ�����FX߃��K��Q7������F�&f}&WՍ;����J�k��Z"8�~��b�?4�*+�b�u��N-��P}R�6��z�+�³@���ۊ7���+ox�
x�^BL���¼��4yY1Zj���dhR.�ٖכ�$�HRtVb?^��*�f�D@�T�-%�jf}՚1�B�He�i��ϵc�t���X1�(�/62C���3��Ƭ���&L
%%2�d��x%��#�A9+!��N��D�5��������ٲ��T�m���K�I��3�A{fy�4�A�#��i��C�+5�k�����z��_���i,;�`bUR��M\�t>�MzBi��g�D6,"��GӥF+�    �j,m$�D~�b������WU����(6��ڬ�dO�o�Ϥ4󬢩��щ,�M5�fSk�;$K���$c��G�w=Z�뭄�;5�C���5�yc7��O�b��݌����QzR�䢃� ��V㉰0�!���8J����ֲZ��p�F�	��`�N��>�2M~�a��t}�x����Ք�j�M0��͔y��W��H�>�-�b��Ί�~{jƓF��YT�"7�h��/�����J�Ɩ����Et��v8o�8	d3�d����Jj3M,E�gDY��|��^��͑�H4V�uh����[K�@u5�G��e>QՍ���|s��gSu�7j��b|����l:�I�j���Q4�̈́X�K���t�w�n�#E�NT�L��V��A�ܕ�j�X��Ffb5J�<�UE[�}R:4
7C�����aWl.=�ܨoy���P�q��9.�E֣sR��mi��_��U*e�I�����z)ϲ��OR��R�lq�W���njn5�z��:+�
�L���y�x�����+��-��Xhr��	פ��D'��b�.� �'=���K鈐���Y�4���y��������ݪ<gCI�7�,<+����e}T��dr��T�i��Ѵ!��1�x�7�jC^.�z���9NMp|���2��w���8���(���Z+ȵX��KfA�����E�9ɮ�b��ɏ�V��	MS��x�t}%4����D�M�ߗ�L!5�.u�3�rG��z7P,w|l�$=�·.ק]���6��W�;_Ό��MHlGx��B�>�$%�dF�X�7�/F���z�ߝ�ٲ/���:�Z�}���(�\�Ĥ�QVF	Dr#>Ok��4��G�U��lW�R��1����Vz�Qҗ(��`?2���H/��Yȵ�Z�ޛL��B��=�0��7��g���i��۔ZZr�=��8iK�L}��
��ή�э�ȵ�������2����E-�\�/�ݰgu��F;.��V����+�%~���s�f��浅��k�Y�{�4��,kkJF�Q�Rߛ��gF�_ϔ�Π�4R�f��-�.��IFe�j7�-K���k�I�Jq�l��-�6���+Fs�Q�D )�x�(O��Ֆ�r˓Rs���a��~�h]KD<a�WN�dA��6^���Md@�nH��c%W�&6�HX.��$;�ed��$����TYe�	w�3S�u���e��ӹ¥U��mp�tD���P`6�VM�����A�#�}�An�����,1�w��PsK�;�q�F9��B���_�ͅ>M%���:�Z�_;��h��ֳ5&�����TK��R[��䔑��ƙL�8�,&�q�ӓZ�n�6n$ZX��n]ln6ɒʨ>>?i�"yO�7P�\@Nq���Ѭ�����W-)r)[���]h�&�����Q_<`��?�/-ڝN�&ה\V�=���4
�^fǋ���fS����$՟���ҿ��aV��h9m4�F��m�c�8�1�S_��2kZ22��	�5�FbU
v���`��D'�nB�e>��z�d�'ks��ґ�6��f�MK�� �6�����yUm��d�׫h��Lͣ>��E'R����-�Ǚ�Ƴ��
��a]e$V�i���]�b��2j.�yɳYV&9��N���w7�m�\�'!6�^�g�Qz3���o2|m�_��\����̦���.ۏ-��/.��(��n_��1gm1-V���Z�s>c�S�Jl5��ި�3��edPR�J4%�g�vD�&#ḛg���d1U5�d�W(/�YwQ0F�З��r91�C17��J�t�!_������2�氵�R��;��M�Z[�%��v�ڠo�&�r���z�ƺ��>������AC�)xԤ��+��u�a��B�Y���h������zOVl��2���pU�2���2/w$)�U��2I�ǝD4����q.R��n)�6#a�Vg3�e��X�f��Co��ŧ�/(��ʹJ<ծ�U��LH�H\��=ʈS��fo�U=�|�LӉM��3�_���|D�����Z�k�|C�G��FT��B9���yO����ż����xfs�����k�T%���t/�����dB�,�1�t��Nȗ�q�\~ᭊ�ɯK#6�M6'�E,8B�L���ϘE����_Y�M�k,��E4\2
���Ƈ݋�1��ʵ��C��4�}���X�g� |T̀M�|D����sAs�7ԛ�)Ai������>�\�Pg�����(���O��1�~K���|n]��
[�fH��h7�R��֥#
��}M=Ͷ4�M+��(�%�'�4�G�'�v�HV�@~��1:��e�����,�>-ņjp��v�[�?}���5--��ηĩ���ʧ~ S�%�����l@�h��h�1Sb&5q
��a?|z�ْJxk����>,i-'�R�����A���ܯh������!�U��§��H	v�D� �ա
�.�l�2�_�\���,��C���[#��C��l:{��n�|e7�&�t.\K)H��)��q\�­�%6ǟ p1�|,�N�t����xP�rKaA���W\ٶyDl������>��1��j���s���;�)!����r���C�hu�����}`�Nz���{���c;	�=���R�R��2Rd�)��uK������ZҸ��W׽���ָ����[�$���#Ā/ip�p�މ�aOR<tF��=;��>xdX�_$�����_��G���~�b����O�ʯOqTR�r{�k���7$?�ݩ�����?�L܏�޾{v��V8���a�����ܒ�%�da��'~	k�g�-��C3�P�-9�U8���6U-W���r��FZb�������_���\��J��X��׭�䄷���r�[Nx�	o9�-'�儷���zOx�;�������#�G	��c���a?:� ����� _����*vpa����S D7���.�bKJ`3����c,;X^Y��4��;�vZ�o������ �c��Ec#�P��߉�es4#Z�{+f@�NV���+��@Jtp0�)�Ԑ,%�H���S?��=�,�(�`���p��$ �f��`�qiO��9���>�%���c�53K��+�e��ccĽO��	i�`�C,D>
���X�d��r�����&O�Q�`�=BR.1�Xt��᠄�*�Q���o-����o����Dd�|�����34�W����ه��#�Ǣ�O+rR�k�܅ږ�;�뼯/�Tݨ��t8�(�Kwϩmqj[����ũmqj[����ũmqj[�ږ�ն��a���C�cQ�,*��'��|̳;JhS���V��I�9��Pq��ո������'�^�����(�[Yn�xCJH�0��O�#8T�{��y�s�|ƒ��_��,����5u�U�$K�S��^�;����蝀�W�>o w��I��ʉ_Z�i��pnA��x$�����>!�Ђ�� �cT%~����	��؝�q��?��b���o�m�4|u\�B�E@;@ko>���r������*��V������'�PEC�Kh�@L;�Kɯ�@�5��3��T����RZ�� �&�K������2k|AK�>�Y��}�9^��Y�?��*s%��7i�$�Ђ��s]��l]j��n%�u��A_}�u��A_}�u��A���o�Z�_��c�c�l�t�9N%^Ӝ�;���ƾ�N�'?�����~�".�4%{AR�@%����'/Q;G���$���u�ǹ^���2F�w��}�e��#FǺs�K� ���)IȺ���FuJ���Q�
��P�|�J����?�R ⾯���Jj���P�� z[�u�ex�����SO������w��D���x���%�����Q>"�ރ��)���%�堌L{ܛۖ�uv`h@�4SE:��D��C!�y�p/Q[o[w�i��p4j!yA,3�������f���-�_�˫�K����-;ĭ�I����2S��3?u�ik	��C	�\nl �V��פ�]s	�b�]r��?u��h<a��ѩO�����Qیↂ�4Bp �  �����}�K�SG�xA.I(��+�A��s|g�9��%=)H��[H�[rO�N�P�t���ޞ��މG���s}cYr���O~c}V��HL1`�vy�9����1��ণh���������Ok�w4�9�@�l;I�ȿB��5���a���^X�Z���SL��x��Le��J��t&�V3卙sb&N�ĉ�81'f��L���3qb&N�ĉ��/f��Fp�����A����m�@�\�~���<��c�<O�������� ��p�ז���xJQ�K��`57�hpY��\�0ޠk�^,i|��rn+4pk5Y$�vZ0}~ /�uO�\�&Y�33�f�Na~�z��\D�԰����Z�����������}[* Y����@����D#`��ߡd�eg�q�H�!��n���;xI���H_C��-�Y
�ۣ��;��i}v�_��E�^��@���1�m���tc����ɝ����H�4 �YP"�'Nސ`hS@�@E)����+̀��[��$bqd
qIUԀ���h�x�R_�Cy���A�Bԁ�Y������)��˴�����[J�9�G��!(�UH [�!^l������C*���������ļ�Q�/l� ı����ö2 1Ńq�tia��@�<,��sc���@�]����9�~�����έe�`�����@��[����&���W����	D��l��R�Wo��x/�Uj��ܗ��1v��c��iC#�y9_�B��;�`��p�N��	v8�'��;�`��xo�#x�pcK��h��wm/�&�,�e �?��+�*��*�&זO���V���#�
l-�ّ��R)����ߺ��ٖ4� E� �o��(����� ����Q#��\I�2i��QiYj�vT�n��u!5׶������{F#.���5��^��g �M`�{�����?�b�oX��� wI����c���PG��<@����Tu�N?�?��?f:�������1\��
�:�V��7}�`��<����옇t��]O���-�����L#�T�bT���H�
�3s�!�e�@�i� ��Q�@��7�}(��̡���:a��Z�da�"L�Ri�2ސ����:��~9g�@�gD����p�B�<�%����sK�n�u�(���ݒ��l�c��v4��&X��w�S�zKj��	m7r����7��7��ή����a|i@h�Ӄ��c�����lv˂GJ���,1�<���c�
y�_Q���	}~��.������w T����չ�YG6�����pj�)������E.c�ﰑ���w�Q:�ɶ���pbNÉa81'���0���pb�a���/~��OC�      �   S	  x��X�n#�}&�bm����ߒ�ISZZٛ�X816�#�h�!G$g�t�������i���~X��g��.�NU�r�ۻr�.�
O��\��'��o�o춮s��O�\�	_nk�s3�:�l�;v�۹�p���Q�o�+(��K���w��]!Q�{�����ub�~Y�ﱉ��Q��5^��Ε��=B(�K?����Ȓ=��{ZT�/]i��⧫w�ƃ�����=��~�׭�¾�@)�JA��/�i엦�-䴐Q�
=����'�R{��ʕ��w��W�7+����+���q�s���]���t)o!�u���:��O!�_A��/�tg��M-?(��#���_\��2"��ř��+�ҙե��yD�j�ml���
��
i�h�2I&��^~�sה�r攚�w�G�I����1�LP���)Ub�c�`�w�Tgҳ�B�%r� k ?�_)��[�`Ÿ0�+ �f>da�D8,�,J7/�A���B���h�?�4�6�w��E6�1"'1���ft+6�R��Yҵn�xN�o�A���k�`,`)��iJ�}pLgI��H\?p���P��!v�a�
w]�H����e���bM�L��F�Keh5�)��
㟳���d��d�, $0p�*C:�G^�Ș����Ϥ��܂��Qa�W����9c[ȭ;c�=^(rB��5?a^=Wv0�	� Cc��ט���g4�A��1�[ӝ��5�3vB[�d�L�;.��h �lI�d��0��x0p��\<eL�J���������]m�E:ER�'��j<���YLZ�v�e=�FM#��rΘ�L�����s����[�*��� .��G1��D�1D-�n�N�w_�F�H/b/���ŏV�x��@�:���G%��-!�%��u��HU�Px����Q2t����UQ�"'�"�/T["{[aп�>���JB�QZO
�΋J�X�tu^�_@��/�����8|}���ψ�ߎ誕4<.��A�X[KT��s,����JI�������}#����L�nMH�kI�s��Xb��|�ގ�̺;��ou$��7o��l�0cbv8�>��J�k���0�f�2OY5N���M����K�!��u}4����UcH�*-C����؁��!hZ�f�P`Sy-��'��M!���]��v���M�ɪ�(V��"�Zz��g��J֋�ems¶�2��ϐ^�V��A��0����3��K���C}K�@_s%��I|��/vcG��"���ܱC}cn˭}�ձ�T3�w/#f&!g�Ӎye����H�Z���~V
5�T��SjL�8�q��Br�Je�6�XUS�#q�fF�Tj�acZq����s4���la%p+([�k�����g��/������Y{l�]�����A���߆�;ʩ��$2F�qfJ+>֒�LH�$�|�ɠav�`��0-�fڕ���\[-JS�0��>�sV�M=4-�Ӈa}sAr+���x�#
.�qn�'��/Ѝ��6F�����q�9��Ж�j#r�}��UL�S�%�,���V\�:�U�V��&5h"�*�\�e��T�4��B2�<.?F�5(�K�1�c�VǞ�P����C�6�/d�Ά��Yn��T�f��6Z��{TGB��-2��� �.���:���2�!�:���W��'�d���ں�<OT>�y�����ٙ�2��zI�F�U��	:d�:�q7-!;��A%y&r"��8pl85]o�Dx�b��	�����F�Ijg�=�0�VMeJ���&i���)#�[6��Qc���BBP?hr�g��c2Ot���M�
��:a �-6J��WC8�ZM�z=���ZT�����hZT��`{��l�������N_�r2�Y�<��b$�@�>"��j�44���"��(֦"�(;t1I�9�Sh�˩E�p��vT���4`�F�E6�S����e�]��P���Dp;և\�ֳ����sJ0+]@�g������{�6�z�6�+G8%|������v�z\07_���*�c�aJE�$��G#�P�̝�	��ʮ%a����n��$�������v�����5?W��{��� ��Z�e��Q�u��,�yK�4b R���ZK����S��5����^I�Ф�/L#�Π#r�h��c�����ShdwT�6DbnX����c��뾮Y���LZ*�n��w�Qc���p��Pv�7�00I`��Wޅ]��Y�+��[��98�v+0p�#�kN*��<�,U���¥��ԩ�#ⓍX0��:�9q�T��c�:�s�:�W<��LOf���/����g��;�     