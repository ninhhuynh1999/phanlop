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
    
    public partial class LoaiCP
    {
        internal bool updated = false;
        internal List<ChiPhi> listChiPhi;

        public int Save()
        {
            if (Id == -1)
                DalLoaiCP.Insert(this);

            if (updated)
                DalLoaiCP.Update(this);

            return this.Id;
        }
        public void Delete()
        {
            DalLoaiCP.Delete(this);
        }
        public List<LoaiCP> GetAllLoaiCP()
        {
            return DalLoaiCP.GetAllLoaiCP();
        }
        public List<ChiPhi> GetChiPhi()
        {
            this.listChiPhi = DalChiPhi.GetChiPhiByLoaiCP(this);
            return listChiPhi;
        }

    }
}
