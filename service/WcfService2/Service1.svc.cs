using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfService2
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        private List<Product> CartItems = new List<Product>();

        public bool AddNewProduct(FFProduct Prod)
        {
            var NProduct = new Product
            {
                Product_ID = Prod.ID,
                P_Name = Prod.PN,
                Supplier_ID = Prod.SID,
                Price = Convert.ToInt32(Prod.Price),
                NumProd = Convert.ToInt32(Prod.NumP)
            };
            db.Products.InsertOnSubmit(NProduct);
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public FFProduct GetProduct(string ID)
        {
            var FoundProduct = (from p in db.Products
                                where p.Product_ID.Equals(ID)
                                select p).FirstOrDefault();

            FFProduct pa = new FFProduct
            {
                ID = FoundProduct.Product_ID,
                PN = FoundProduct.P_Name,
                Price = Convert.ToInt32(FoundProduct.Price),
                NumP = Convert.ToInt32(FoundProduct.NumProd)
            };

            return pa;
        }

        public bool EditProduct(FFProduct Aug, int ID)
        {
            var item = (from i in db.Products
                        where i.Product_ID.Equals(ID)
                        select i).FirstOrDefault();

            item.Product_ID = Aug.ID;
            item.P_Name = Aug.PN;
           
            item.Price = Convert.ToInt32(Aug.Price);
            item.NumProd = Aug.NumP;

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (IndexOutOfRangeException ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        public bool IsNewProduct(string ID)
        {
            dynamic Product = (from p in db.Products
                            where p.Product_ID.Equals(ID)
                            select p).FirstOrDefault();

            if (Product == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool Login(string Email, string Password)
        {
            var FFieldUser = (from u in db.Users
                        where u.Email.Equals(Email) &&
                        u.Active.Equals(1) &&
                        u.Password.Equals(Secrecy.HashPassword(Password)
                       )
                        select u).FirstOrDefault();

            if (FFieldUser != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public int Register(FFUser FFieldUser)
        {
            var NewUser = new User
            {
                First_Name = FFieldUser.name,
                Last_Name = FFieldUser.surname,
                Email = FFieldUser.email,
                Password = Secrecy.HashPassword(FFieldUser.password),
                Active = Convert.ToString(FFieldUser.active)
            };
            db.Users.InsertOnSubmit(NewUser);
            try
            {
                db.SubmitChanges();
                return 1;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return -1;
            }
        }

        public bool Registered(string Email, string Password)
        {
            dynamic UserReg = (from Reg in db.Users
                               where Reg.Email.Equals(Email) &&
                                     Reg.Password.Equals(Secrecy.HashPassword(Password))
                               select Reg).FirstOrDefault();

            if (UserReg == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public List<Product> getCartItems()
        {
            return CartItems;
        }

        public void AddToCart(Product Item)
        {
            CartItems.Add(Item);
        }

        public void RemoveFromCart(Product Item)
        {
            CartItems.Remove(Item);
        }

    }
}
