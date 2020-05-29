import { NgModule } from "@angular/core";

import {
    MenuClientServiceProxy,
    DemoModelServiceProxy,
} from "@shared/service-proxies/service-proxies";

import { TableModule } from "primeng/table";
import { FormsModule } from "@angular/forms";
import { BrowserModule } from "@angular/platform-browser";
import { CommonModule } from "@angular/common";
import { Group2RoutingModule } from "./group2.routing.module";
import { Group2ServiceProxyModule } from "./group2.service-proxy.module";
import { VehicleListComponent } from './vehicle/vehicle-list.component';

@NgModule({
    imports: [
        Group2RoutingModule,
        Group2ServiceProxyModule,
        CommonModule,
        FormsModule,
        TableModule,
    ],
    declarations: [VehicleListComponent],
    providers: [],
})
export class Group2Module {}
