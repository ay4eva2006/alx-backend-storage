-- create_stored_procedure.sql

-- Define the delimiter to handle semicolons within the procedure
DELIMITER //

-- Create the stored procedure
DROP FUNCTION IF EXISTS ComputeAverageWeightedScoreForUsers;
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
    DECLARE total_weighted_score FLOAT;
    DECLARE total_weight FLOAT;

    -- Calculate the total weighted score and total weight
    SELECT SUM(score * weight) INTO total_weighted_score, SUM(weight) INTO total_weight
    FROM scores
    WHERE user_id = user_id;

    -- Check if total weight is not zero to avoid division by zero
    IF total_weight != 0 THEN
        -- Calculate the average weighted score
        SET @average_weighted_score = total_weighted_score / total_weight;

        -- Update or insert the computed average weighted score for the user
        INSERT INTO average_weighted_scores (user_id, average_score)
        VALUES (user_id, @average_weighted_score)
        ON DUPLICATE KEY UPDATE average_score = @average_weighted_score;
    END IF;
END //

-- Reset the delimiter back to semicolon
DELIMITER ;

