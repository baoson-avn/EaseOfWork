//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CoreData
{
    using System;
    using System.Collections.Generic;
    
    public partial class Avatar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Avatar()
        {
            this.Staffs = new HashSet<Staff>();
        }
    
        public int Id { get; set; }
        public System.Guid Guid { get; set; }
        public byte[] AvatarContent { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Staff> Staffs { get; set; }
    }
}