
/*
	Impede que seja inserido um participante sem um EMAIL
*/
create function participante_gatilho() RETURNS TRIGGER as $participante_gatilho$

begin
	IF NEW.email IS NULL THEN
		RAISE EXCEPTION '%s não pode ficar sem um email!!!', NEW.nome_participante;
		return null;
	END IF;

	RETURN NEW;
end;
 $participante_gatilho$ LANGUAGE plpgsql;

  CREATE TRIGGER participante_gatilho BEFORE INSERT OR UPDATE ON participante
    FOR EACH ROW EXECUTE PROCEDURE participante_gatilho();

