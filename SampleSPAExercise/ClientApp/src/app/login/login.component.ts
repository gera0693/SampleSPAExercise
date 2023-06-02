import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html'
})
export class LoginComponent {
  user!: IUser;
  users: IUser[] = [];
  username: string = '';
  password: string = '';
  flag: boolean = false;


  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    http.get<IUser[]>('https://localhost:7158/user').subscribe(result => {
      this.users = result;
    }, error => console.error(error));
  }

  public login() {
    console.log('working...', this.users);
    console.log('entries: ', this.username, this.password);
    var result;
    result = this.users.filter(x => x.username == this.username && x.password == this.password)[0];
    if (result != null) {
      this.flag = true;
    }
  }

}

interface IUser {
  username: string;
  password: string;
}
