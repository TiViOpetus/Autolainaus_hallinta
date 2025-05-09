-- Table: public.siirto

-- DROP TABLE IF EXISTS public.siirto;

CREATE TABLE IF NOT EXISTS public.siirto
(
    rekisterinumero character varying(7),
    merkki character varying(30),
    malli character varying(30),
    tarkoitus character varying(30),
    hetu character varying(11),
    etunimi character varying(50),
    sukunimi character varying(50),
    otto timestamp without time zone,
    palautus timestamp without time zone
);

ALTER TABLE IF EXISTS public.siirto
    OWNER to postgres;

INSERT INTO public.siirto (SELECT * FROM public.ajopaivakirja)