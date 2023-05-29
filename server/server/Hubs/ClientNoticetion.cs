using Microsoft.AspNetCore.SignalR;

namespace server.Hubs
{
    public class ClientNoticetion : Hub
    {
        public async Task SendMessage(string message)
        {
            await Clients.All.SendAsync("ReceiveMessage", message);
        }
    }
}
