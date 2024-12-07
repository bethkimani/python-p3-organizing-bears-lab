INSERT INTO bears (id, name, age, sex, color, temperament, alive) VALUES
(1,"Mr. Chocolate", 20, "M", "dark brown", "calm", 0),
(2,"Rowdy", 10, "M", "black", "intense", 1),
(3,"Tabitha", 6, "F", "dark brown", "Nice", 1),
(4,"Sergeant Brown", 19, "M", "Green", "Slimy", 0),
(5,"Melissa", 13, "F", "dark brown", "goofy", 1),
(6,"Grinch", 2, "M", "Black", "Grinchy", 1),
(7,"Wendy", 6, "F", "Blue", "naive", 1),
(8,null, 20, "M", "black", "aggressive", 0);
select_all_female_bears_return_name_and_age = """
    SELECT
        bears.name,
        bears.age
    FROM bears
    WHERE sex='F';
"""

select_bears_older_than_4 = """
    SELECT
        bears.name,
        bears.age
    FROM bears
    WHERE bears.age > 4;
"""

select_all_calm_bears = """
    SELECT
        bears.name,
        bears.temperament
    FROM bears
    WHERE bears.temperament = 'Calm';
"""

select_all_alive_bears = """
    SELECT
        bears.name,
        bears.age,
        bears.alive
    FROM bears
    WHERE bears.alive = 1;
"""

select_oldest_bear = """
    SELECT
        bears.name,
        bears.age
    FROM bears
    ORDER BY bears.age DESC
    LIMIT 1;
"""

select_bears_with_no_name = """
    SELECT
        bears.id,
        bears.age
    FROM bears
    WHERE bears.name IS NULL;
"""

select_all_bears_sorted_by_age_desc = """
    SELECT
        bears.name,
        bears.age
    FROM bears
    ORDER BY bears.age DESC;
"""

select_all_brown_bears = """
    SELECT
        bears.name,
        bears.color
    FROM bears
    WHERE bears.color = 'Brown';
"""
