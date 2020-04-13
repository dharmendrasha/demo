{{--start--}}
<div class="container">
    <div class="table-responsive">
        <form action="#" method="POST">
            <div class='row'>
                <div class="col">
                    <div class="form-group">
                      <label for="name">Name</label>
                      <input type="text"
                    class="form-control" name="name" value="{{Auth::user()->name}}" id="name" aria-describedby="nameUser" placeholder="Full Name">
                      <small id="nameUser" class="form-text text-muted">User Name</small>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="userName">User Name</label>
                      <input type="text"
                        class="form-control" name="userName" value="{{Auth::user()->username}}" id="userName" aria-describedby="username" placeholder="UserName">
                      <small id="UserName" class="form-text text-muted">userName</small>
                    </div>
                </div>
                <div class="w-100"></div>
                <div class="col">
                    <div class="form-group">
                      <label for="mobileNumber">MobileNumber</label>
                      <input type="tel"
                        class="form-control" name="mobileNumber" value="{{Auth::user()->mobile}}" id="mobileNumber" aria-describedby="mobileNumber" placeholder="mobileNumber">
                      <small id="mobileNumber" class="form-text text-muted">mobilenymber</small>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="email">Email</label>
                      <input type="email"
                        class="form-control" name="email" id="email" value="{{Auth::user()->email}}" aria-describedby="email" placeholder="emai">
                      <small id="email" class="form-text text-muted">email</small>
                    </div>
                </div>
            </div>
            <div class="w-100"></div>
            <div class="col">
                <button type="submit" name="" id="" class="btn btn-success btn-lg btn-block">Updte</button>
            </div>
        </form>
    </div>
</div>
{{--end--}}
