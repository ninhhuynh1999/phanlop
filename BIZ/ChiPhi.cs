//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyDuLich.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChiPhi
    {
        internal bool updated = false;

        public void Save()
        {
            

            if (updated)
            {
                DalChiPhi.Update(this);
            }
            else
            {
                DalChiPhi.Insert(this);

            }


        }
        public void Delete()
        {
            DalChiPhi.Delete(this);
        }
        public DoanDL GetDoanDL()
        {
            return DalChiPhi.GetDoanByChiPhi(this);
        }
    }
}
