
using System;

namespace Group2.AbpZeroTemplate.Application.Share.Vehicles.Dto
{
    /// <summary>
    /// <model cref="Vehicle"></model>
    /// </summary>
    public class VehicleDto
    {
        public int? Id { get; set; }
        public string VehicleID { get; set; }
        public string VehicleCode { get; set; }
        public string Name { get; set; }
        public string Color { get; set; }
        public string RecordStatus { get; set; }
        public string MakerId { get; set; }
        public DateTime? CreateDt { get; set; }
        public string AuthStatus { get; set; }
        public string CheckerId { get; set; }
        public DateTime? ApproveDt { get; set; }

    }
}
