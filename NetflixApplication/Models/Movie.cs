//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NetflixApplication.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Movie
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Movie()
        {
            this.MyLists = new HashSet<MyList>();
            this.Ratings = new HashSet<Rating>();
            this.Directors = new HashSet<Director>();
            this.Actors = new HashSet<Actor>();
        }
        private string img = @"D:\DA - Video\Poster\";
        private string movie = @"D:\DA - Video\Movie\";
        private string _P;
        private string _T;
        private string _M;

        public int Movie_ID { get; set; }
        public int Category_ID { get; set; }
        public string Movie_Name { get; set; }
        public Nullable<int> Movie_Year { get; set; }
        public string Movie_Describe { get; set; }
        public string Movie_Trailer { get { return _T; } set { _T = movie + value; } }
        public string Movie_Image { get { return _P; } set { _P = img + value; } }
        public Nullable<int> Movie_View { get; set; }
        public Nullable<int> Movie_Lenght { get; set; }
    
        public virtual Category Category { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MyList> MyLists { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rating> Ratings { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Director> Directors { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Actor> Actors { get; set; }
    }
}
