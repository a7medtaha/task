
import Foundation
protocol BrandsView: class {
    func fetchingDataSuccess()
    func startSpinner()
    func stopSpinner()
    func showError(error: String)
    func navigate2ModelsScreen(model: [Models])
    func tableInfolbl(_ txt: String)
    
    
}
protocol BrandsCellView {
    func displayItem(name: String,imageUrl: String)
}
class BrandsVCPresenter {
    private weak var view: BrandsView?
    private var brandsList = [Brands_Base]()
    private  let  interactor =  Interactor()
    init(view: BrandsView) {
        self.view = view
    }
    func viewDidLoad()  {
        getBrands()
    }
    
    
    func getBrands() {
        view?.startSpinner()
        do{
            try interactor.read_file(completionHandler: { [weak self] (response) in
                guard let self = self else { return } //And note this is only available from swift 4.2
                guard let response = response else { return }
                self.view?.stopSpinner()
                if response.count == 0 {
                    self.view?.tableInfolbl("there is no Data .")
                }else{
                    self.brandsList = response
                    self.view?.fetchingDataSuccess()

                }
                
                
                
            })
        }catch{
            self.view?.stopSpinner()
            self.view?.showError(error: error.localizedDescription)
            print("catch presenter ==>>\(error)")
        }
    }
    
    func getBrandsCount() -> Int {
        return brandsList.count
    }
        func configure(cell: BrandsCellView, for index: Int) {
        let brand = brandsList[index]
        cell.displayItem(name: brand.brand ?? "", imageUrl: brand.logo ?? "")
        
    }
    
    func didSelectBrand(_ index: Int)  {
        let brand = brandsList[index]
        view?.navigate2ModelsScreen(model: brand.models ?? [])

    }
    
}
