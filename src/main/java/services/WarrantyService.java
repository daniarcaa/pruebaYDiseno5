
package services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repositories.WarrantyRepository;
import domain.Warranty;

@Service
@Transactional
public class WarrantyService {

	@Autowired
	private WarrantyRepository	warrantyRepository;


	// CRUD Methods

	public Warranty create(String title, List<String> terms, List<String> laws, boolean isDraftMode) {

		Warranty warranty = new Warranty();
		warranty.setTitle(title);
		warranty.setIsDraftMode(isDraftMode);
		warranty.setTerms(terms);
		warranty.setLaws(laws);

		return warranty;
	}

	public Warranty save(Warranty warranty) {
		return this.warrantyRepository.save(warranty);
	}

	public Warranty findOne(int warrantyId) {
		return this.warrantyRepository.findOne(warrantyId);
	}

	public void delete(Warranty warranty) {
		this.warrantyRepository.delete(warranty);
	}

	public List<Warranty> findAll() {
		return this.warrantyRepository.findAll();
	}

}