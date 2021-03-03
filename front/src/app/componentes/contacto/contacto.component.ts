import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { ContactoService } from 'src/app/servicios/contacto.service';

@Component({
  selector: 'app-contacto',
  templateUrl: './contacto.component.html',
  styleUrls: ['./contacto.component.css']
})
export class ContactoComponent implements OnInit {

  formContacto = this.fb.group({
    nombreCompleto: ['',Validators.required],
    email: ['',[Validators.required,Validators.email]],
    comentario: ['',Validators.required]
  });
  constructor(private contacto:ContactoService,private fb:FormBuilder,private irHacia:Router) { }

  ngOnInit(): void {
  }

  insertarContacto(): void {
    this.contacto.insertarContacto(this.formContacto.value).subscribe(
      res => {
        console.log(res);
        this.irHacia.navigate(['/']);
      },
      error => {console.log(error)}
    );
  }
}
