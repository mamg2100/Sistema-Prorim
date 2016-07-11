CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `placas` AS
    select 
        `a`.`Nome_Unidade` AS `Nome_Unidade`,
        `a`.`Descricao` AS `Descricao`,
        `b`.`PLACA` AS `Placa`,
        `a`.`Cetil` AS `Cetil`,
        `a`.`Contabilidade` AS `Contabilidade`,
        `a`.`OrdenadorAss` AS `OrdenadorAss`,
        `a`.`ComprasPrim` AS `ComprasPrim`,
        `a`.`OrdenadorEmpenho` AS `OrdenadorEmpenho`,
        `a`.`ComprasSeg` AS `Comprasseg`,
        `a`.`Dipe` AS `Dipe`
    from
        (`rim` `a`
        join `consultaplaca` `b`)
    where
        (`a`.`Cetil` = `b`.`CETIL`)
