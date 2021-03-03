import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

const baseURL = "http://localhost/colabFinal/back/municipios/"

@Injectable({
  providedIn: 'root'
})
export class MunicipiosService {

  constructor(private http:HttpClient) { }

  obtenerMunicipios(): Observable<any> {
    return this.http.get(baseURL);
  }
}
