package model;

public class Contact implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private int id;
	
	private String name;
	
	private String cellphone;
	
	private String telephone;
	
	private String email;
	
	private String birthdate;
	
	private Contact(Builder builder) {
		this.id = builder.id;
        this.name = builder.name;
        this.cellphone = builder.cellphone;
        this.telephone = builder.telephone;
        this.email = builder.email;
        this.birthdate = builder.birthdate;
    }

    public static class Builder {
    	private int id;
        private String name;
        private String cellphone;
        private String telephone;
        private String email;
        private String birthdate;

        public Builder() {
            // Default constructor
        }
        
        public Builder withId(int id) {
            this.id = id;
            return this;
        }

        public Builder withName(String name) {
            this.name = name;
            return this;
        }

        public Builder withCellphone(String cellphone) {
            this.cellphone = cellphone;
            return this;
        }

        public Builder withTelephone(String telephone) {
            this.telephone = telephone;
            return this;
        }

        public Builder withEmail(String email) {
            this.email = email;
            return this;
        }

        public Builder withBirthdate(String birthdate) {
            this.birthdate = birthdate;
            return this;
        }

        public Contact build() {
            return new Contact(this);
        }
    }

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}

	public String getCellphone() {
		return cellphone;
	}

	public String getTelephone() {
		return telephone;
	}

	public String getEmail() {
		return email;
	}

	public String getBirthdate() {
		return birthdate;
	}
}
