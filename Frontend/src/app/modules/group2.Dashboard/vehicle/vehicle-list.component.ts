import { appModuleAnimation } from '@shared/animations/routerTransition';
import { AfterViewInit, Component, ViewEncapsulation, Injector } from '@angular/core';
import { AppComponentBase } from '@shared/common/app-component-base';

@Component({
    templateUrl: './vehicle-list.component.html',
    encapsulation: ViewEncapsulation.None,
    animations: [appModuleAnimation()]
})


export class VehicleListComponent extends AppComponentBase implements AfterViewInit{
    /**
     *
     */
    constructor(injector: Injector) {
        super(injector);
        
    }



    ngAfterViewInit(): void {
        throw new Error("Method not implemented.")
    }

}