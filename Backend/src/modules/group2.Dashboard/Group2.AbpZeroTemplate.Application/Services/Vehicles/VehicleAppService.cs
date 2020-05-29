using System.Linq;
using System.Linq.Dynamic.Core;
using System.Collections.Generic;
using GSoft.AbpZeroTemplate.Helpers;
using GSoft.AbpZeroTemplate.Sessions;
using Group2.AbpZeroTemplate.Application.Share.Vehicles.Dto;
using Microsoft.AspNetCore.Builder;
using Abp.Application.Services;
using Abp.Runtime.Session;
using System.Threading.Tasks;
using GSoft.AbpZeroTemplate.Sessions.Dto;

namespace Group2.AbpZeroTemplate.Web.Core.Vehicles
{
    public interface IVehicleAppService : IApplicationService
    {
        IDictionary<string, object> VEHICLE_Upd(VehicleDto input);
        IDictionary<string, object> VEHICLE_App(int id, string checkerId);
        VehicleDto VEHICLE_ById(int id);
        IDictionary<string,object> VEHICLE_Ins(VehicleDto input);
        IDictionary<string, object> VEHICLE_Del(int id);
        List<VehicleDto> VEHICLE_Search(VehicleDto input);
        string GetCurrentUserName();
    }
    public class VehicleAppService : BaseService, IVehicleAppService
    {
        public VehicleAppService()
        {
            
        }
        public IDictionary<string, object> VEHICLE_App(int id, string checkerId)
        {
            return procedureHelper.GetData<dynamic>("VEHICLE_App", new {
                Id = id,
                CheckerId = checkerId
            }).FirstOrDefault();
        }

        public VehicleDto VEHICLE_ById(int id)
        {
            return procedureHelper.GetData<VehicleDto>("VEHICLE_ById", new
            {
                Id = id
            }).FirstOrDefault();
        }

        public IDictionary<string, object> VEHICLE_Del(int id)
        {
            return procedureHelper.GetData<dynamic>("VEHICLE_Del", new
            {
                Id = id
            }).FirstOrDefault();
        }

        public IDictionary<string, object> VEHICLE_Ins(VehicleDto input)
        {
            return procedureHelper.GetData<dynamic>("VEHICLE_Ins", input).FirstOrDefault();
        }

        public List<VehicleDto> VEHICLE_Search(VehicleDto input)
        {
            return procedureHelper.GetData<VehicleDto>("VEHICLE_Search", input);
        }

        public IDictionary<string, object> VEHICLE_Upd(VehicleDto input)
        {
            return procedureHelper.GetData<dynamic>("VEHICLE_Upd", input).FirstOrDefault();
        }

 
    }
}
