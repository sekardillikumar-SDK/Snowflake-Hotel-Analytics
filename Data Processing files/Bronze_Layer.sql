Create  table Bronze_hotel_booking
(
booking_id string,
hotel_id string,
hotel_city string,
customer_id string,
customer_name string,
customer_email string,
check_in_date string,
check_out_date string,
room_type string,
num_guests string,
total_amount string,
currency string,
booking_status string
)

COPY INTO BRONZE_HOTEL_BOOKING
FROM @STG_HOTELBOKKING
FILE_FORMAT = (FORMAT_NAME = FF_CSV )
ON_ERROR = 'CONTINUE';

SELECT * FROM BRONZE_HOTEL_BOOKING;