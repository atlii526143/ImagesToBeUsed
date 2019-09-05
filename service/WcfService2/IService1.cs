using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfService2
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        string GetData(int value);

        [OperationContract]
        CompositeType GetDataUsingDataContract(CompositeType composite);

        [OperationContract]
        bool Login(String Email, String Password);

        [OperationContract]
        int Register(FFUser FFieldUser);

        [OperationContract]
        bool Registered(String Email, String Password);

        [OperationContract]
        bool IsNewProduct(String ID);
        [OperationContract]
        bool AddNewProduct(FFProduct Prod);

        [OperationContract]
        List<Product> getCartItems();

        [OperationContract]
        void AddToCart(Product Item);

        [OperationContract]
        void RemoveFromCart(Product Item);

        [OperationContract]
        FFProduct GetProduct(string ID);

        [OperationContract]
        bool EditProduct(FFProduct Aug, int ID);
    }


    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}
