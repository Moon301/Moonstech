package dao;
import java.util.ArrayList;
import dto.Product;


public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
//		Product phone = new Product("P1235", "iphone 14" ,1250000);
//		phone.setDescription("4-7inch, 1334X750 Renina HD display, 8-megapicel iSight Camera");
//		phone.setCategory("Smart Phone");
//		phone.setManufacturer("Apple");
//		phone.setUnitsInStock(1000);
//		phone.setCondition("New");
//		phone.setFilename("P1235.jpeg");
//
//		
//		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
//		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processers");
//		notebook.setCategory("Notebook");
//		notebook.setManufacturer("LG");
//		notebook.setUnitPrice(1000);
//		notebook.setCondition("Refurbished");
//		notebook.setFilename("P1235.jpg");
//		
//		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
//		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
//		tablet.setCategory("Tablet");
//		tablet.setManufacturer("Samsung");
//		tablet.setUnitPrice(1000);
//		tablet.setCondition("Old");
//		tablet.setFilename("P1236.jpg");
//		
//		
//		listOfProducts.add(phone);
//		listOfProducts.add(notebook);
//		listOfProducts.add(tablet);
//		
		
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product!=null&&product.getProductId()!=null&&product.getProductId().equals(productId)) {
				productById=product;
				break;
			}
		}
		return productById;
		
	}
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
