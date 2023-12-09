class ShippingInfo {
  final String id, itemName, source, destination;

  const ShippingInfo({
    required this.id,
    required this.itemName,
    required this.source,
    required this.destination,
  });
}

const listOfShipping = <ShippingInfo>[
  ShippingInfo(
    id: 'MP-78833939a3',
    itemName: 'Macbook Pro 2023',
    source: 'US',
    destination: 'Nigeria',
  ),
  ShippingInfo(
    id: 'MP-7927373UAED',
    itemName: 'JBL Headphones',
    source: 'Brazil',
    destination: 'India',
  ),
  ShippingInfo(
    id: 'MP-88EUE29382',
    itemName: 'Samsung Galaxy S21',
    source: 'China',
    destination: 'Nigeria',
  ),
  ShippingInfo(
    id: 'MP-UU88AE3D',
    itemName: 'Samsung Galaxy S21',
    source: 'China',
    destination: 'Nigeria',
  ),
];
