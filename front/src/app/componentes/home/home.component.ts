import { Component, OnInit } from '@angular/core';
import { Visita } from 'src/app/clases/visita';
import { VisitasService } from 'src/app/servicios/visitas.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  ultimasVisitas:Visita[] = []
  constructor(private visitas:VisitasService) { }

  ngOnInit(): void {
    this.obtenerVisitas();
  }

  obtenerVisitas(): void {
    this.visitas.obtenerVisitas().subscribe(
      res => {
        this.ultimasVisitas = res;
        console.log(res);
      },
      error => {
        console.log(error);
      }
    );
  }
}
