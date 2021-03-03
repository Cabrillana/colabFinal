import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ContactoComponent } from './componentes/contacto/contacto.component';
import { HomeComponent } from './componentes/home/home.component';
import { VisitasComponent } from './componentes/visitas/visitas.component';

const routes: Routes = [
  {path: 'home', component: HomeComponent},
  {path: 'visitas', component: VisitasComponent},
  {path: 'contacto', component: ContactoComponent},
  {path: '**', component: HomeComponent},
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
