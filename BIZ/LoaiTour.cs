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
    
    public partial class LoaiTour
    {
        internal bool updated = false;
      


        
        public int Save()
        {
            if (Id == -1)
                DalLoaiTour.Insert(this);

            if (updated)
                DalLoaiTour.Update(this);

            return this.Id;
        }
        public void Delete()
        {
            DalLoaiTour.Delete(this);
        }
    }
}
