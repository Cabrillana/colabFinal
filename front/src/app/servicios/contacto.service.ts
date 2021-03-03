import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Contacto } from '../clases/contacto';

const baseURL = "http://localhost/colabFinal/back/contacto/"

@Injectable({
  providedIn: 'root'
})
export class ContactoService {

  constructor(private http:HttpClient) { }

  insertarContacto(contactoEntrada:Contacto): Observable<any> {
    return this.http.post(baseURL,contactoEntrada);
  }
}
