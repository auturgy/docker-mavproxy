import pytest

@pytest.fixture(scope='module')
def container_image():
    return 'asciich/mavproxy'

class TestAsciichAvrdudeImage(object):

    def test_mavproxy_command_exists(self, docker_container):
        assert docker_container.exists('mavproxy.py')

    def test_check_mavproxy_help_page(self, docker_container):
        assert b'Usage: mavproxy.py [options]' in docker_container.check_output('mavproxy.py -h')

