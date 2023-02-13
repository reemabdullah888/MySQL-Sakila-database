import mysql.connector
import sys


def customer_info(first_name):
	cnx = mysql.connector.connect(user='dsci551', password='Dsci-551', host='127.0.0.1', database='sakila')
	cursor = cnx.cursor()




	query = """select first_name, last_name , city from customer c inner join address a on c.address_id = a.address_id inner join city y on y.city_id = a.city_id where first_name = %s"""
	cursor.execute(query,(first_name,))
	result = cursor.fetchall()
	if len(result) == 0:
		print('Customer does not exist')
	else:

		for i in result:
			print(i[0]+' '+i[1]+' '+i[2].upper())


	cursor.close()
	cnx.close()



if __name__ == "__main__":
	customer_info(sys.argv[1])
