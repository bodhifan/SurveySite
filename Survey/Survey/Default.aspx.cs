using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey;
using System.Data.Entity;
namespace Survey
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Survey.SurveyEntities entitites = new SurveyEntities())
            {
                var list = entitites.HotNews.Where(a=> a.id>0).OrderBy(a=>a.date);
                List<HotNews> targetlists = new List<HotNews>();
                List<HotNews> sourceList = list.ToList();
                for (int i = 0; i < 6; i++)
                {
                    targetlists.Add(sourceList[i]);
                }
                Repeater1.DataSource = targetlists;
                Repeater1.DataBind();
            }
        }
    }
}