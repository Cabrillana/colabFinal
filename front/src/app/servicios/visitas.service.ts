import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Visita } from '../clases/visita';

const baseURL = "http://localhost/colabFinal/back/visitas/"

@Injectable({
  providedIn: 'root'
})
export class VisitasService {

  constructor(private http: HttpClient) { }

  obtenerVisitas(): Observable<any> {
    return this.http.get(baseURL);
  }

  insertarVisita(visitaEntrada:Visita): Observable<any> {
    return this.http.post(baseURL,visitaEntrada);
  }
  
}
