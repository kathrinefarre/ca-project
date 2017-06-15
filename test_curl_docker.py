import os
import unittest

class TestCase(unittest.TestCase):

	def setUp(self):
		os.system("docker build -t finkultur/ca-project:0.1 .")
		os.system("docker run -d -p 5000:5000 finkultur/ca-project:0.1")
                os.system("sleep 2")

	def tearDown(self):
		os.system("docker rm -f $(docker ps -a -q)")

	def test_get_webpage(self):
		status = os.system('curl localhost:5000')
		self.assertEqual(status, 0)

if __name__ == '__main__':
	unittest.main()	
