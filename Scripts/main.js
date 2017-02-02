function loadNav() {
    var navLinks = [];
    navLinks[0] = '<li><a href="default.aspx">Home</a></li>';
    navLinks[1] = '<li><a href="createRequest.html">New Request</a></li>';
    navLinks[2] = '<li><a href="vendors.aspx">Vendors</a></li>';
    navLinks[3] = '<li><a href="catalog.aspx">Catalog Items</a></li>';
    navLinks[4] = '<li><a href="reviewRequests.html">Review Requests</a></li>';
    navLinks[5] = '<li><a href="approveRequests.html">Approve Requests</a></li>';
    navLinks[6] = '<li>Search</li>';

    $.each(navLinks, function () { $("#navMenu").append(this.valueOf()) });
}