using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace ServiceApplication
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {

        Link_to_databaseDataContext db = new Link_to_databaseDataContext();

        private List<Product> CartItems = new List<Product>();

        public bool AddNewProduct(Product Prod)
        {
            var NProduct = new Product
            {
                product_ID = Prod.product_ID,
                product_name = Prod.product_name,
                product_category = Prod.product_category,
                product_description = Prod.product_description,
                product_discount = Prod.product_discount,
                product_price = Prod.product_price,
                product_supplier = Prod.product_supplier
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

        public Product GetProduct(string ID)
        {
            var FoundProduct = (from p in db.Products
                                where p.product_ID.Equals(ID)
                                select p).FirstOrDefault();

            Product pa = new Product
            {
                product_ID = FoundProduct.product_ID,
                product_name = FoundProduct.product_name,
                product_price = Convert.ToInt32(FoundProduct.product_price),
            };

            return pa;
        }

        public bool EditProduct(Product Aug, int ID)
        {
            var item = (from i in db.Products
                        where i.product_ID.Equals(ID)
                        select i).FirstOrDefault();

            item.product_ID = Aug.product_ID;
            item.product_name = Aug.product_name;
            item.product_price= Convert.ToInt32(Aug.product_price);

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

        public bool IsNewProduct(string ID)
        {
            dynamic Product = (from p in db.Products
                               where p.product_ID.Equals(ID)
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
                              where u.email.Equals(Email) &&
                              u.active.Equals(1) &&
                              u.password.Equals(Secrecy.HashPassword(Password)
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

        public int Register(User FFieldUser)
        {
            var NewUser = new User
            {
                first_name = FFieldUser.first_name,
                last_name = FFieldUser.last_name,
                email = FFieldUser.email,
                phone_number = FFieldUser.phone_number,
                address = FFieldUser.address,
                user_type = FFieldUser.user_type,
                active = Convert.ToInt32(FFieldUser.active),
                password = Secrecy.HashPassword(FFieldUser.password),
                zip_code = FFieldUser.zip_code,
                city = FFieldUser.city,
                province = FFieldUser.province
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
                               where Reg.email.Equals(Email) &&
                                     Reg.password.Equals(Secrecy.HashPassword(Password))
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
