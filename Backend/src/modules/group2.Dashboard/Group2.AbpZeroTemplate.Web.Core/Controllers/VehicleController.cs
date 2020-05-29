using Abp.AspNetCore.Mvc.Controllers;
using Abp.Dependency;
using Group2.AbpZeroTemplate.Application.Share.Vehicles.Dto;
using Group2.AbpZeroTemplate.Web.Core.Vehicles;
using GSoft.AbpZeroTemplate.Sessions.Dto;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group2.AbpZeroTemplate.Application.Controllers
{
    [Route("api/[controller]/[action]")]
    public class VehicleController : AbpController
    {
        private readonly IVehicleAppService vehicleAppService;

        public VehicleController(IVehicleAppService vehicleAppService)
        {
            this.vehicleAppService = vehicleAppService;
        }
        [HttpPost]
        public IDictionary<string, object> VEHICLE_Upd([FromBody]VehicleDto input)
        {
            return vehicleAppService.VEHICLE_Upd(input);
        }
        [HttpPost]
        public IDictionary<string, object> VEHICLE_App(int id, string checkerId)
        {
            return vehicleAppService.VEHICLE_App(id, checkerId);
        }
        [HttpPost]
        public VehicleDto VEHICLE_ById(int id)
        {
            return vehicleAppService.VEHICLE_ById(id);
        }
        [HttpPost]
        public IDictionary<string, object> VEHICLE_Ins([FromBody]VehicleDto input)
        {
            return vehicleAppService.VEHICLE_Ins(input);
        }
        [HttpPost]
        public IDictionary<string, object> VEHICLE_Del(int id)
        {
            return vehicleAppService.VEHICLE_Del(id);
        }
        [HttpPost]
        public List<VehicleDto> VEHICLE_Search([FromBody]VehicleDto input)
        {
            return vehicleAppService.VEHICLE_Search(input);
        }

        [HttpGet]
        public string GetCurrentUserName()
        {
            return vehicleAppService.GetCurrentUserName();
        }
    }
}
