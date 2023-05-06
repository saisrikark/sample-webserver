#[macro_use] extern crate rocket;

#[get("/")]
fn index() -> &'static str {
    "Hello, world!"
}

#[get("/name/<name>")]
fn myname(name: String) -> String {
    format!("your name is {}", name)
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![index,myname])
}