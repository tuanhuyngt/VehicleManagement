import { NgModule } from "@angular/core";
import { RouterModule } from "@angular/router";
import { VehicleListComponent } from "./vehicle/vehicle-list.component";

@NgModule({
    imports: [
        RouterModule.forChild([
            {
                path: "",
                children: [
                    {
                        path: "vehicle",
                        component: VehicleListComponent,
                        data: { permission: "Pages.Group2.Vehicle" },
                    },
                    // {
                    //     path: "car-add",
                    //     component: CarEditComponent,
                    //     data: {
                    //         permission: "Pages.Group0.Car.Add",
                    //         editPageState: "add",
                    //     },
                    // },
                    // {
                    //     path: "car-edit",
                    //     component: CarEditComponent,
                    //     data: {
                    //         permission: "Pages.Group0.Car.Update",
                    //         editPageState: "edit",
                    //     },
                    // },
                    // {
                    //     path: "car-view",
                    //     component: CarEditComponent,
                    //     data: {
                    //         permission: "Pages.Group0.Car.View",
                    //         editPageState: "view",
                    //     },
                    // },
                ],
            },
        ]),
    ],
    exports: [RouterModule],
})
export class Group2RoutingModule { }
