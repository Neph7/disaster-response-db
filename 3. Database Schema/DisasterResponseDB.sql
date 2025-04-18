PGDMP  +        	            }           DisasterResponseDB    17.3    17.2 M               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    28428    DisasterResponseDB    DATABASE     z   CREATE DATABASE "DisasterResponseDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
 $   DROP DATABASE "DisasterResponseDB";
                     postgres    false            �            1259    28505    AffectedPerson    TABLE     �   CREATE TABLE public."AffectedPerson" (
    "PersonID" integer NOT NULL,
    "FullName" character varying(100),
    "Age" integer,
    "Gender" character varying(10),
    "LocationID" integer,
    "Needs" text,
    "Status" character varying(50)
);
 $   DROP TABLE public."AffectedPerson";
       public         heap r       postgres    false            �            1259    28504    AffectedPerson_PersonID_seq    SEQUENCE     �   CREATE SEQUENCE public."AffectedPerson_PersonID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."AffectedPerson_PersonID_seq";
       public               postgres    false    230                       0    0    AffectedPerson_PersonID_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."AffectedPerson_PersonID_seq" OWNED BY public."AffectedPerson"."PersonID";
          public               postgres    false    229            �            1259    28519    AidResource    TABLE     �   CREATE TABLE public."AidResource" (
    "ResourceID" integer NOT NULL,
    "ResourceType" character varying(100),
    "Description" text,
    "QuantityAvailable" integer
);
 !   DROP TABLE public."AidResource";
       public         heap r       postgres    false            �            1259    28518    AidResource_ResourceID_seq    SEQUENCE     �   CREATE SEQUENCE public."AidResource_ResourceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."AidResource_ResourceID_seq";
       public               postgres    false    232                       0    0    AidResource_ResourceID_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."AidResource_ResourceID_seq" OWNED BY public."AidResource"."ResourceID";
          public               postgres    false    231            �            1259    28488 
   Deployment    TABLE     �   CREATE TABLE public."Deployment" (
    "DeploymentID" integer NOT NULL,
    "TeamID" integer,
    "EventID" integer,
    "DeploymentDate" date,
    "Status" character varying(50)
);
     DROP TABLE public."Deployment";
       public         heap r       postgres    false            �            1259    28487    Deployment_DeploymentID_seq    SEQUENCE     �   CREATE SEQUENCE public."Deployment_DeploymentID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Deployment_DeploymentID_seq";
       public               postgres    false    228                       0    0    Deployment_DeploymentID_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Deployment_DeploymentID_seq" OWNED BY public."Deployment"."DeploymentID";
          public               postgres    false    227            �            1259    28460    DisasterEvent    TABLE     �   CREATE TABLE public."DisasterEvent" (
    "EventID" integer NOT NULL,
    "Type" character varying(100),
    "LocationID" integer,
    "SeverityLevel" character varying(50),
    "StartDate" date,
    "EndDate" date,
    "Description" text
);
 #   DROP TABLE public."DisasterEvent";
       public         heap r       postgres    false            �            1259    28459    DisasterEvent_EventID_seq    SEQUENCE     �   CREATE SEQUENCE public."DisasterEvent_EventID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."DisasterEvent_EventID_seq";
       public               postgres    false    224                       0    0    DisasterEvent_EventID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."DisasterEvent_EventID_seq" OWNED BY public."DisasterEvent"."EventID";
          public               postgres    false    223            �            1259    28474    ImpactReport    TABLE     �   CREATE TABLE public."ImpactReport" (
    "ReportID" integer NOT NULL,
    "EventID" integer,
    "ReportDate" date,
    "Casualties" integer,
    "Injuries" integer,
    "PropertyDamage" text,
    "Remarks" text
);
 "   DROP TABLE public."ImpactReport";
       public         heap r       postgres    false            �            1259    28473    ImpactReport_ReportID_seq    SEQUENCE     �   CREATE SEQUENCE public."ImpactReport_ReportID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."ImpactReport_ReportID_seq";
       public               postgres    false    226                       0    0    ImpactReport_ReportID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."ImpactReport_ReportID_seq" OWNED BY public."ImpactReport"."ReportID";
          public               postgres    false    225            �            1259    28430    Location    TABLE     �   CREATE TABLE public."Location" (
    "LocationID" integer NOT NULL,
    "County" character varying(100),
    "SubCounty" character varying(100),
    "Ward" character varying(100),
    "GPSCoordinates" character varying(255)
);
    DROP TABLE public."Location";
       public         heap r       postgres    false            �            1259    28429    Location_LocationID_seq    SEQUENCE     �   CREATE SEQUENCE public."Location_LocationID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Location_LocationID_seq";
       public               postgres    false    218                       0    0    Location_LocationID_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Location_LocationID_seq" OWNED BY public."Location"."LocationID";
          public               postgres    false    217            �            1259    28439    Organization    TABLE     �   CREATE TABLE public."Organization" (
    "OrganizationID" integer NOT NULL,
    "OrgName" character varying(100) NOT NULL,
    "OrgType" character varying(50),
    "ContactInfo" character varying(255),
    "RegistrationNo" character varying(50)
);
 "   DROP TABLE public."Organization";
       public         heap r       postgres    false            �            1259    28438    Organization_OrganizationID_seq    SEQUENCE     �   CREATE SEQUENCE public."Organization_OrganizationID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Organization_OrganizationID_seq";
       public               postgres    false    220                       0    0    Organization_OrganizationID_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Organization_OrganizationID_seq" OWNED BY public."Organization"."OrganizationID";
          public               postgres    false    219            �            1259    28528    ResourceDistribution    TABLE     �   CREATE TABLE public."ResourceDistribution" (
    "DistributionID" integer NOT NULL,
    "ResourceID" integer,
    "PersonID" integer,
    "EventID" integer,
    "Quantity" integer,
    "DistributionDate" date
);
 *   DROP TABLE public."ResourceDistribution";
       public         heap r       postgres    false            �            1259    28527 '   ResourceDistribution_DistributionID_seq    SEQUENCE     �   CREATE SEQUENCE public."ResourceDistribution_DistributionID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."ResourceDistribution_DistributionID_seq";
       public               postgres    false    234                       0    0 '   ResourceDistribution_DistributionID_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."ResourceDistribution_DistributionID_seq" OWNED BY public."ResourceDistribution"."DistributionID";
          public               postgres    false    233            �            1259    28448    ResponseTeam    TABLE     �   CREATE TABLE public."ResponseTeam" (
    "TeamID" integer NOT NULL,
    "Name" character varying(100),
    "OrganizationID" integer,
    "ContactInfo" character varying(255),
    "Specialization" character varying(100)
);
 "   DROP TABLE public."ResponseTeam";
       public         heap r       postgres    false            �            1259    28447    ResponseTeam_TeamID_seq    SEQUENCE     �   CREATE SEQUENCE public."ResponseTeam_TeamID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ResponseTeam_TeamID_seq";
       public               postgres    false    222                       0    0    ResponseTeam_TeamID_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ResponseTeam_TeamID_seq" OWNED BY public."ResponseTeam"."TeamID";
          public               postgres    false    221            F           2604    28508    AffectedPerson PersonID    DEFAULT     �   ALTER TABLE ONLY public."AffectedPerson" ALTER COLUMN "PersonID" SET DEFAULT nextval('public."AffectedPerson_PersonID_seq"'::regclass);
 J   ALTER TABLE public."AffectedPerson" ALTER COLUMN "PersonID" DROP DEFAULT;
       public               postgres    false    229    230    230            G           2604    28522    AidResource ResourceID    DEFAULT     �   ALTER TABLE ONLY public."AidResource" ALTER COLUMN "ResourceID" SET DEFAULT nextval('public."AidResource_ResourceID_seq"'::regclass);
 I   ALTER TABLE public."AidResource" ALTER COLUMN "ResourceID" DROP DEFAULT;
       public               postgres    false    231    232    232            E           2604    28491    Deployment DeploymentID    DEFAULT     �   ALTER TABLE ONLY public."Deployment" ALTER COLUMN "DeploymentID" SET DEFAULT nextval('public."Deployment_DeploymentID_seq"'::regclass);
 J   ALTER TABLE public."Deployment" ALTER COLUMN "DeploymentID" DROP DEFAULT;
       public               postgres    false    228    227    228            C           2604    28463    DisasterEvent EventID    DEFAULT     �   ALTER TABLE ONLY public."DisasterEvent" ALTER COLUMN "EventID" SET DEFAULT nextval('public."DisasterEvent_EventID_seq"'::regclass);
 H   ALTER TABLE public."DisasterEvent" ALTER COLUMN "EventID" DROP DEFAULT;
       public               postgres    false    223    224    224            D           2604    28477    ImpactReport ReportID    DEFAULT     �   ALTER TABLE ONLY public."ImpactReport" ALTER COLUMN "ReportID" SET DEFAULT nextval('public."ImpactReport_ReportID_seq"'::regclass);
 H   ALTER TABLE public."ImpactReport" ALTER COLUMN "ReportID" DROP DEFAULT;
       public               postgres    false    225    226    226            @           2604    28433    Location LocationID    DEFAULT     �   ALTER TABLE ONLY public."Location" ALTER COLUMN "LocationID" SET DEFAULT nextval('public."Location_LocationID_seq"'::regclass);
 F   ALTER TABLE public."Location" ALTER COLUMN "LocationID" DROP DEFAULT;
       public               postgres    false    218    217    218            A           2604    28442    Organization OrganizationID    DEFAULT     �   ALTER TABLE ONLY public."Organization" ALTER COLUMN "OrganizationID" SET DEFAULT nextval('public."Organization_OrganizationID_seq"'::regclass);
 N   ALTER TABLE public."Organization" ALTER COLUMN "OrganizationID" DROP DEFAULT;
       public               postgres    false    219    220    220            H           2604    28531 #   ResourceDistribution DistributionID    DEFAULT     �   ALTER TABLE ONLY public."ResourceDistribution" ALTER COLUMN "DistributionID" SET DEFAULT nextval('public."ResourceDistribution_DistributionID_seq"'::regclass);
 V   ALTER TABLE public."ResourceDistribution" ALTER COLUMN "DistributionID" DROP DEFAULT;
       public               postgres    false    234    233    234            B           2604    28451    ResponseTeam TeamID    DEFAULT     �   ALTER TABLE ONLY public."ResponseTeam" ALTER COLUMN "TeamID" SET DEFAULT nextval('public."ResponseTeam_TeamID_seq"'::regclass);
 F   ALTER TABLE public."ResponseTeam" ALTER COLUMN "TeamID" DROP DEFAULT;
       public               postgres    false    222    221    222                      0    28505    AffectedPerson 
   TABLE DATA           t   COPY public."AffectedPerson" ("PersonID", "FullName", "Age", "Gender", "LocationID", "Needs", "Status") FROM stdin;
    public               postgres    false    230    e                 0    28519    AidResource 
   TABLE DATA           i   COPY public."AidResource" ("ResourceID", "ResourceType", "Description", "QuantityAvailable") FROM stdin;
    public               postgres    false    232   �e                 0    28488 
   Deployment 
   TABLE DATA           g   COPY public."Deployment" ("DeploymentID", "TeamID", "EventID", "DeploymentDate", "Status") FROM stdin;
    public               postgres    false    228   �e       �          0    28460    DisasterEvent 
   TABLE DATA           �   COPY public."DisasterEvent" ("EventID", "Type", "LocationID", "SeverityLevel", "StartDate", "EndDate", "Description") FROM stdin;
    public               postgres    false    224   >f                  0    28474    ImpactReport 
   TABLE DATA           �   COPY public."ImpactReport" ("ReportID", "EventID", "ReportDate", "Casualties", "Injuries", "PropertyDamage", "Remarks") FROM stdin;
    public               postgres    false    226   �f       �          0    28430    Location 
   TABLE DATA           c   COPY public."Location" ("LocationID", "County", "SubCounty", "Ward", "GPSCoordinates") FROM stdin;
    public               postgres    false    218   Hg       �          0    28439    Organization 
   TABLE DATA           q   COPY public."Organization" ("OrganizationID", "OrgName", "OrgType", "ContactInfo", "RegistrationNo") FROM stdin;
    public               postgres    false    220   h                 0    28528    ResourceDistribution 
   TABLE DATA           �   COPY public."ResourceDistribution" ("DistributionID", "ResourceID", "PersonID", "EventID", "Quantity", "DistributionDate") FROM stdin;
    public               postgres    false    234   �h       �          0    28448    ResponseTeam 
   TABLE DATA           m   COPY public."ResponseTeam" ("TeamID", "Name", "OrganizationID", "ContactInfo", "Specialization") FROM stdin;
    public               postgres    false    222   �h                  0    0    AffectedPerson_PersonID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."AffectedPerson_PersonID_seq"', 1, false);
          public               postgres    false    229                       0    0    AidResource_ResourceID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."AidResource_ResourceID_seq"', 1, false);
          public               postgres    false    231                       0    0    Deployment_DeploymentID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Deployment_DeploymentID_seq"', 1, false);
          public               postgres    false    227                       0    0    DisasterEvent_EventID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."DisasterEvent_EventID_seq"', 1, false);
          public               postgres    false    223                       0    0    ImpactReport_ReportID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ImpactReport_ReportID_seq"', 1, false);
          public               postgres    false    225                       0    0    Location_LocationID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Location_LocationID_seq"', 1, false);
          public               postgres    false    217                       0    0    Organization_OrganizationID_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Organization_OrganizationID_seq"', 1, false);
          public               postgres    false    219                       0    0 '   ResourceDistribution_DistributionID_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."ResourceDistribution_DistributionID_seq"', 1, false);
          public               postgres    false    233                        0    0    ResponseTeam_TeamID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ResponseTeam_TeamID_seq"', 1, false);
          public               postgres    false    221            X           2606    28512 "   AffectedPerson AffectedPerson_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."AffectedPerson"
    ADD CONSTRAINT "AffectedPerson_pkey" PRIMARY KEY ("PersonID");
 P   ALTER TABLE ONLY public."AffectedPerson" DROP CONSTRAINT "AffectedPerson_pkey";
       public                 postgres    false    230            Z           2606    28526    AidResource AidResource_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AidResource"
    ADD CONSTRAINT "AidResource_pkey" PRIMARY KEY ("ResourceID");
 J   ALTER TABLE ONLY public."AidResource" DROP CONSTRAINT "AidResource_pkey";
       public                 postgres    false    232            V           2606    28493    Deployment Deployment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Deployment"
    ADD CONSTRAINT "Deployment_pkey" PRIMARY KEY ("DeploymentID");
 H   ALTER TABLE ONLY public."Deployment" DROP CONSTRAINT "Deployment_pkey";
       public                 postgres    false    228            R           2606    28467     DisasterEvent DisasterEvent_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."DisasterEvent"
    ADD CONSTRAINT "DisasterEvent_pkey" PRIMARY KEY ("EventID");
 N   ALTER TABLE ONLY public."DisasterEvent" DROP CONSTRAINT "DisasterEvent_pkey";
       public                 postgres    false    224            T           2606    28481    ImpactReport ImpactReport_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."ImpactReport"
    ADD CONSTRAINT "ImpactReport_pkey" PRIMARY KEY ("ReportID");
 L   ALTER TABLE ONLY public."ImpactReport" DROP CONSTRAINT "ImpactReport_pkey";
       public                 postgres    false    226            J           2606    28437    Location Location_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_pkey" PRIMARY KEY ("LocationID");
 D   ALTER TABLE ONLY public."Location" DROP CONSTRAINT "Location_pkey";
       public                 postgres    false    218            L           2606    28446 ,   Organization Organization_RegistrationNo_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."Organization"
    ADD CONSTRAINT "Organization_RegistrationNo_key" UNIQUE ("RegistrationNo");
 Z   ALTER TABLE ONLY public."Organization" DROP CONSTRAINT "Organization_RegistrationNo_key";
       public                 postgres    false    220            N           2606    28444    Organization Organization_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Organization"
    ADD CONSTRAINT "Organization_pkey" PRIMARY KEY ("OrganizationID");
 L   ALTER TABLE ONLY public."Organization" DROP CONSTRAINT "Organization_pkey";
       public                 postgres    false    220            \           2606    28533 .   ResourceDistribution ResourceDistribution_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."ResourceDistribution"
    ADD CONSTRAINT "ResourceDistribution_pkey" PRIMARY KEY ("DistributionID");
 \   ALTER TABLE ONLY public."ResourceDistribution" DROP CONSTRAINT "ResourceDistribution_pkey";
       public                 postgres    false    234            P           2606    28453    ResponseTeam ResponseTeam_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."ResponseTeam"
    ADD CONSTRAINT "ResponseTeam_pkey" PRIMARY KEY ("TeamID");
 L   ALTER TABLE ONLY public."ResponseTeam" DROP CONSTRAINT "ResponseTeam_pkey";
       public                 postgres    false    222            b           2606    28513 -   AffectedPerson AffectedPerson_LocationID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AffectedPerson"
    ADD CONSTRAINT "AffectedPerson_LocationID_fkey" FOREIGN KEY ("LocationID") REFERENCES public."Location"("LocationID");
 [   ALTER TABLE ONLY public."AffectedPerson" DROP CONSTRAINT "AffectedPerson_LocationID_fkey";
       public               postgres    false    230    218    4682            `           2606    28499 "   Deployment Deployment_EventID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Deployment"
    ADD CONSTRAINT "Deployment_EventID_fkey" FOREIGN KEY ("EventID") REFERENCES public."DisasterEvent"("EventID");
 P   ALTER TABLE ONLY public."Deployment" DROP CONSTRAINT "Deployment_EventID_fkey";
       public               postgres    false    224    4690    228            a           2606    28494 !   Deployment Deployment_TeamID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Deployment"
    ADD CONSTRAINT "Deployment_TeamID_fkey" FOREIGN KEY ("TeamID") REFERENCES public."ResponseTeam"("TeamID");
 O   ALTER TABLE ONLY public."Deployment" DROP CONSTRAINT "Deployment_TeamID_fkey";
       public               postgres    false    222    228    4688            ^           2606    28468 +   DisasterEvent DisasterEvent_LocationID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DisasterEvent"
    ADD CONSTRAINT "DisasterEvent_LocationID_fkey" FOREIGN KEY ("LocationID") REFERENCES public."Location"("LocationID");
 Y   ALTER TABLE ONLY public."DisasterEvent" DROP CONSTRAINT "DisasterEvent_LocationID_fkey";
       public               postgres    false    4682    218    224            _           2606    28482 &   ImpactReport ImpactReport_EventID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ImpactReport"
    ADD CONSTRAINT "ImpactReport_EventID_fkey" FOREIGN KEY ("EventID") REFERENCES public."DisasterEvent"("EventID");
 T   ALTER TABLE ONLY public."ImpactReport" DROP CONSTRAINT "ImpactReport_EventID_fkey";
       public               postgres    false    224    226    4690            c           2606    28544 6   ResourceDistribution ResourceDistribution_EventID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ResourceDistribution"
    ADD CONSTRAINT "ResourceDistribution_EventID_fkey" FOREIGN KEY ("EventID") REFERENCES public."DisasterEvent"("EventID");
 d   ALTER TABLE ONLY public."ResourceDistribution" DROP CONSTRAINT "ResourceDistribution_EventID_fkey";
       public               postgres    false    224    234    4690            d           2606    28539 7   ResourceDistribution ResourceDistribution_PersonID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ResourceDistribution"
    ADD CONSTRAINT "ResourceDistribution_PersonID_fkey" FOREIGN KEY ("PersonID") REFERENCES public."AffectedPerson"("PersonID");
 e   ALTER TABLE ONLY public."ResourceDistribution" DROP CONSTRAINT "ResourceDistribution_PersonID_fkey";
       public               postgres    false    230    4696    234            e           2606    28534 9   ResourceDistribution ResourceDistribution_ResourceID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ResourceDistribution"
    ADD CONSTRAINT "ResourceDistribution_ResourceID_fkey" FOREIGN KEY ("ResourceID") REFERENCES public."AidResource"("ResourceID");
 g   ALTER TABLE ONLY public."ResourceDistribution" DROP CONSTRAINT "ResourceDistribution_ResourceID_fkey";
       public               postgres    false    232    234    4698            ]           2606    28454 -   ResponseTeam ResponseTeam_OrganizationID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ResponseTeam"
    ADD CONSTRAINT "ResponseTeam_OrganizationID_fkey" FOREIGN KEY ("OrganizationID") REFERENCES public."Organization"("OrganizationID");
 [   ALTER TABLE ONLY public."ResponseTeam" DROP CONSTRAINT "ResponseTeam_OrganizationID_fkey";
       public               postgres    false    222    220    4686               _   x�3�����Sp�O�46��M�I�4��H�)I-�Qp��O�t�,.�ILNM�2��J�KUO�M*��4��tK��0�O��t,.�,.*����� ��         U   x�3�I�+��E�E�
��9%�E
% aC.#N�������lN��<݂Ԣ��Ĥ�T�4�DqiAANfj1�)Pq� �?�         :   x�3�4�4�4202�50�50�tL.�,K�2�4�@�uM9��srRKRS�b���� =>�      �   w   x�=�A
1��ur�\��d�"�<��Jk�2m��o/��ݷ��c�l��9� V��.��|����5Cʕ�����MGZ?���!���ذ�)��������}�:�n��2�q@���%�          s   x�-�A� @��p�� ff�^��حZJB����va��}!�Z�,��F�B0�W�˸�]�cٵG��,��q���ь��o��@g�^���R>�KsҀ�V�>��>�޼/Ƙ��"�      �   �   x�-�A
�0���9@	_���݈nt��/�j��IKo�<Y����$P;s���~kOЅ�Ar�"]���D��ʓe.#���	G�so�H�4>{�j=hCVr,�lגg*�MKh��p��ǲ�&�����B�"ޡ���P��C�P�k귂<��X�f�<QE���<���B�      �   �   x�=���0����)�	X ^��(4$���N�h;fZcx{����N
%����_�,�$@]�`�l��C���,_,UG�c��	M>~�}�t,�S2�g>�ʡey<0<��9Gp�qӓ����m����Z]���9-         *   x�3�4C#N##]c]3.#N4�
�p��qqq �w�      �   t   x�%�;�0 ��>EN�b'@;��N�ڎ,Vb�H�H	�� ���p-�f�Q������Sߵ�*%�F~Ѽ������(eJzl�obb��9GsI=�uZ�(~/�3�3S]R�84�� �     