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
    
    public partial class Tour
    {
        internal bool updated = false;
        internal List<Gia> listGiaOfTour= new List<Gia>();
        internal Gia curGia = new Gia();
        internal List<DoanDL> listDoanDL = new List<DoanDL>();


        public Tour(int _Id,String _Ten, int _MaloaiTour)
        {
            Id = _Id;
            Ten = _Ten;
            MaLoaiTour = _MaloaiTour;
        }
        public int Save()
        {
            if (Id == -1)
                DalTour.Insert(this);

            if (updated)
                DalTour.Update(this);

            return this.Id;
        }
         public void DeleteAllChiTietTour()
        {
            DalTour.DeleteChiTietTourByTour(this);
        }
        public List<Gia> GetListGiaTour()
        {
            this.listGiaOfTour = DalTour.GetGiaByTour(this);
            return listGiaOfTour;
        }
        public Gia GetCurrentGiaTour()
        {
            this.curGia = DalTour.GetCurrentGiaTour(this);
            return curGia;
        }
        public Gia GetGiaByDatetime(DateTime bd)
        {
            foreach(Gia gia in listGiaOfTour)
            {
                if(bd >= gia.BatDau && bd <= gia.KetThuc)
                {
                    return gia;
                }
            }
            return null;
        }
        public List<DoanDL> GetDoanDL()
        {
            this.listDoanDL = DalTour.GetDoanDLCuaTour(this);
            return listDoanDL;
        }
        
    }
}
