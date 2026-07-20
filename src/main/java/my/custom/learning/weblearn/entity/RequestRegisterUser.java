package my.custom.learning.weblearn.entity;

public class RequestRegisterUser {
//	{
//        "user_id": 10004,
//        "first_name": "Sudeep",
//        "last_name": "Mukherji",
//        "email": "sudeep.mukherji@gmail.com",
//        "phone": "9434545667",
//        "is_active": true,
//        "created_at": "2026-07-11T06:36:06.153933",
//        "address": {
//            "address_id": 1,
//            "address_line1": "address line 1",
//            "address_line2": "address line 2",
//            "state": "Uttar Pradesh",
//            "postal_code": "998776",
//            "created_at": "2026-07-10T20:16:32.130237",
//            "city": {
//                "city_id": 585,
//                "city_name": "Varanasi",
//                "state_province": "Uttar Pradesh",
//                "country": {
//                    "country_id": 109,
//                    "country_name": "India",
//                    "country_region_continent": "Asia",
//                    "country_primary_tz": "Asia/Kolkata",
//                    "created_at": "2026-07-09T13:01:42.844232"
//                },
//                "hibernateLazyInitializer": {}
//            }
//        },
//        "user_address_id": 1
//    }
	private Address address;
	private User user;

	public RequestRegisterUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RequestRegisterUser(Address address, User user) {
		super();
		this.address = address;
		this.user = user;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "RequestRegisterUser [address=" + address + ", user=" + user + "]";
	}
}
