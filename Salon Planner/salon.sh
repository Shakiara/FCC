#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"

echo -e "~~~~~ MY SALON ~~~~~\n"
echo "Welcome to My Salon, how can I help you?"

SHOW_SERVICES() {
	echo "$($PSQL "SELECT service_id, name FROM services ORDER BY service_id" | while IFS='|' read -r SERVICE_ID SERVICE_NAME; do echo "$SERVICE_ID) $SERVICE_NAME"; done)"
}

SHOW_SERVICES

while true; do
	read SERVICE_ID_SELECTED

	SERVICE_INFO=$($PSQL "SELECT service_id, name FROM services WHERE service_id::text = '$SERVICE_ID_SELECTED' LIMIT 1")

	if [[ -n $SERVICE_INFO ]]; then
		IFS='|' read -r SERVICE_ID_SELECTED SERVICE_NAME <<< "$SERVICE_INFO"
		break
	fi

	echo -e "\nI could not find that service. What would you like today?"
	SHOW_SERVICES
done

echo ""
echo "What's your phone number?"
read CUSTOMER_PHONE

CUSTOMER_INFO=$($PSQL "SELECT customer_id, name FROM customers WHERE phone = '$CUSTOMER_PHONE' LIMIT 1")

if [[ -z $CUSTOMER_INFO ]]; then
	echo ""
	echo "I don't have a record for that phone number, what's your name?"
	read CUSTOMER_NAME
	INSERT_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME') RETURNING customer_id, name")
	IFS='|' read -r CUSTOMER_ID CUSTOMER_NAME <<< "$INSERT_RESULT"
else
	IFS='|' read -r CUSTOMER_ID CUSTOMER_NAME <<< "$CUSTOMER_INFO"
fi

echo ""
echo "What time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
read SERVICE_TIME

$PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')" >/dev/null

echo ""
echo "I have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
