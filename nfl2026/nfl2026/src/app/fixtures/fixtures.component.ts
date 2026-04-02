import { Component, inject } from '@angular/core';
import { Fixture } from '../fixture';
import { FixturesService } from '../fixtures.service';
import {CommonModule} from '@angular/common';

@Component({
  selector: 'app-fixtures',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './fixtures.component.html',
  styleUrl: './fixtures.component.css'
})
export class FixturesComponent {
  fixtures: Fixture[] = [];
  fixturesService = inject(FixturesService);

  constructor(){
      this.fixturesService.getFixtures().subscribe(
        response => {
          this.fixtures = response;
        }
      );
  }

}
