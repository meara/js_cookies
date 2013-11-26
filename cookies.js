function Cookie(cookie_type, bake_time) {
  this.time_in_oven = 0;
  this.in_oven = false;
  this.cookie_type = cookie_type;
  this.bake_time = bake_time;
}

Cookie.prototype.is_burned = function() {
  return ( (this.time_in_oven + 2) > this.bake_time );
}

Cookie.prototype.is_baked = function() {
  return (this.time_in_oven >= this.bake_time);
}

Cookie.prototype.put_in_oven = function() {
  this.in_oven = true;
}

Cookie.prototype.remove_from_oven = function() {
  this.in_oven = false;
}

Cookie.prototype.increment_time_in_oven = function() {
  this.time_in_oven ++
}

Cookie.prototype.bake_cookie = function() {
  if (!(this.in_oven)) {
    this.put_in_oven();
    console.log("Cookie is in oven: " + this.in_oven);
  }

  while (!( this.is_baked() )) {
    this.increment_time_in_oven();
    console.log("Bake time: " + this.time_in_oven);
  }

  if (this.is_baked) {
    this.remove_from_oven();
    console.log("Cookie is in oven: " + this.in_oven);
    console.log("Cookie is baked: " + this.is_baked() );
  }

}






cookie = new Cookie('choc chip', 15)

cookie.is_burned()
cookie.time_in_oven
cookie.increment_time_in_oven()
cookie.time_in_oven
