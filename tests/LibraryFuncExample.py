import robot
from robot.api import deco, logger


@robot.api.deco.keyword('user ${demo} logs in with password ${demo}')
def some_function(user, password):
    logger.info(user)
    logger.error(password)
    return None
