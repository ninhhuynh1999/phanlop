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
    
    public partial class CTDoan
    {
        public int MaDoan { get; set; }
        public int MaNguoiThamGia { get; set; }
        public string GhiChu { get; set; }
        public string ChucVuTrongDoan { get; set; }
    
        public virtual DoanDL DoanDL { get; set; }
        public virtual Nguoi Nguoi { get; set; }
    }
}
