function Request(id, firstName, lastName, status, neededBy, description, vendor, amount) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.status = status;
    this.neededBy = neededBy;
    this.desc = description;
    this.vendor = vendor;
    this.amount = amount;
}

function Vendor(approved, vendorId, name, streetAddress, city, state, zipcode, phone, email, catalog) {
    this.approved = approved;
    this.vendorId = vendorId;
    this.name = name;
    this.streetAddress = streetAddress;
    this.city = city;
    this.state = state;
    this.zipcode = zipcode;
    this.phone = phone;
    this.email = email;
    this.catalog = catalog;
}

function Item(vendorID, ItemID, description, price) {
    this.vendorId = vendorID;
    this.itemId = ItemID;
    this.description = description;
    this.price = price;
}
