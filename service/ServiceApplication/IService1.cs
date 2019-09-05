using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace ServiceApplication
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        bool Login(String Email, String Password);

        [OperationContract]
        int Register(User FFieldUser);

        [OperationContract]
        bool Registered(String Email, String Password);

        [OperationContract]
        bool IsNewProduct(String ID);

        [OperationContract]
        bool AddNewProduct(Product Prod);

        [OperationContract]
        List<Product> getCartItems();

        [OperationContract]
        void AddToCart(Product Item);

        [OperationContract]
        void RemoveFromCart(Product Item);

        [OperationContract]
        Product GetProduct(string ID);

        [OperationContract]
        bool EditProduct(Product Aug, int ID);
    }
}
