using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JARTraining2.Startup))]
namespace JARTraining2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
