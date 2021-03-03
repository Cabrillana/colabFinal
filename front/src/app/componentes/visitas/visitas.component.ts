import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { Municipio } from 'src/app/clases/municipio';
import { MunicipiosService } from 'src/app/servicios/municipios.service';
import { VisitasService } from 'src/app/servicios/visitas.service';

@Component({
  selector: 'app-visitas',
  templateUrl: './visitas.component.html',
  styleUrls: ['./visitas.component.css']
})
export class VisitasComponent implements OnInit {

  listaMunicipios:Municipio[] = []

  formVisita = this.fb.group({
    nombreCompleto: ['',Validators.required],
    email: ['',[Validators.required,Validators.email]],
    idMunicipioVisitado: ['',Validators.required],
    municipioProcedencia: ['',Validators.required],
    comentario: ['',Validators.required]
  });

  constructor(private municipios:MunicipiosService,private visitas:VisitasService,private fb:FormBuilder,private irHacia:Router) { }

  ngOnInit(): void {
    this.obtenerMunicipios();
  }

  obtenerMunicipios(): void {
    this.municipios.obtenerMunicipios().subscribe(
      res=>{
        this.listaMunicipios = res;
        console.log(res);
      },
      error => {
        console.log(error);
      }
    );
  }

  insertarVisita(): void {
    this.visitas.insertarVisita(this.formVisita.value).subscribe(
      res => {
        console.log(res);
        this.irHacia.navigate(['/']);
      },
      error => {console.log(error)}
    );
  }
}
