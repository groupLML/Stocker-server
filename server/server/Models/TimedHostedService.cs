using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Hosting;

namespace server.Models
{
    public class TimedHostedService : IHostedService, IDisposable
    {
        private int executionCount = 0; //יצירת משתנה הסופר את כמות הפעמים שהטיימר התרחש
        private readonly ILogger<TimedHostedService> _logger; //הגדרת קובץ log לקריאה בלבד
        private Timer? _timer = null; //יצירת טיימר


        //קונסטרקטור לקובץ לוג המשמש להתחברות למערכת הלוגים ולהצגת הודעות לפי הקטגוריות המתאימות
        public TimedHostedService(ILogger<TimedHostedService> logger)
        {
            _logger = logger;
        }


        //סגירת השירות המתוזמן
        public Task StartAsync(CancellationToken stoppingToken)
        {
            _logger.LogInformation("Timed Hosted Service running."); // כתיבה לקובץ לוג שהתחילה פעולת הטיימר 

            _timer = new Timer(DoWork, null, TimeSpan.Zero,
                TimeSpan.FromMinutes(1)); //הגדרת הטיימר

            return Task.CompletedTask;
        }


        //הפעולה שעושים כשעוברת דקה בטיימר
        private void DoWork(object? state) { 
            //באמצעות פעולה זו ניתן להגדיל את הערך בצורה אוטומטית ובטוחה מבחינת התהליך, ולוודא שפעולה אחרת שעשוייה להשתמש בערך זה לא תבוצע באותו זמן
            var count = Interlocked.Increment(ref executionCount); //ref- שינוי הערך באמצעות הפניה

            _logger.LogInformation(
                "Timed Hosted Service is working. Count: {Count}", count); // כתיבה לקובץ לוג המייצגת את מספר הפעמים שבהן הופעלה המתודה

            DBservices dbs = new DBservices();
            dbs.UpdateDeclineReqs(_logger);
            dbs.UpdateCompleteReqs(_logger);
        }


        //סגירת הטיימר
        public Task StopAsync(CancellationToken stoppingToken) 
        {
            _logger.LogInformation("Timed Hosted Service is stopping.");

            _timer?.Change(Timeout.Infinite, 0); //איפוס הטיימר

            return Task.CompletedTask;
        }


        //מתודה המשמשת למחיקה של המשאב טיימר הנוצר בתחילת התהליך על מנת להימנע מכך שישארו משאבים פעילים לא בשימוש ויגרמו לבזבוז משאבי מערכת
        public void Dispose() 
        {
            _timer?.Dispose();
        }
    }
}


//מיקום קובץ הלוג תלוי בקונפיגורציה של מערכת הלוגים שלנו. בד"כ, מגדירים את מיקום קובץ הלוג בתוך קובץ הקונפיגורציה.