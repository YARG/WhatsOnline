using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    public class HomeController : Controller
    {
        //public ActionResult Index()
        //{
        //    //ViewBag.Message = "Bienvenido a Whats! :)";

        //    ViewData["Mensaje"] = "";
        //    return View();
        //}

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Index(string id)
        {
            if (id != null)
            {
                string htmlUrl = "https://v.whatsapp.net/v2/exist?cc=54&in=" + id.Substring(2) + "&to=" + id + "&lg=es&lc=AR&mcc=204&mnc=008&method=voice";

                using (var webClient = new System.Net.WebClient())
                {
                    var json = webClient.DownloadString(htmlUrl);
                    if (json.Contains("created"))
                    {
                        ViewData["Mensaje"] = "Existe una cuenta para ese n&uacute;mero de tel&eacute;fono.";
                    }
                    else 
                    {
                        ViewData["Mensaje"] = "No existe una cuenta para ese n&uacute;mero de tel&eacute;fono.";
                    }
                }

                

                
            }
            else 
            {
                ViewData["Mensaje"] = "Por favor ingrese un valor v&aacute;lido";
            }

            return View();
        }

    }
}
