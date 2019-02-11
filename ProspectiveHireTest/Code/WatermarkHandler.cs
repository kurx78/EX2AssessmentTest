using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;

namespace ProspectiveHireTest
{
    public class WatermarkHandler : IHttpHandler
    {
        #region IHttpHandler Members

        public bool IsReusable
        {
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            HttpResponse response = context.Response;

            if (File.Exists(request.PhysicalPath))
            {
                Bitmap bitmap = new Bitmap(request.PhysicalPath);
                Graphics graphics = Graphics.FromImage(bitmap);
                graphics.SmoothingMode = SmoothingMode.AntiAlias;
                graphics.CompositingMode = CompositingMode.SourceOver;
                graphics.CompositingQuality = CompositingQuality.HighQuality;
                graphics.PixelOffsetMode = PixelOffsetMode.HighQuality;
                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                graphics.DrawString("American Presidents, Inc. 2009", 
                    new Font("Arial", 10, FontStyle.Bold), new SolidBrush(Color.White),
                    new PointF(10, 10), new StringFormat());
                //bitmap.RotateFlip(RotateFlipType.Rotate180FlipX);
                ImageCodecInfo imageCodecInfo = ImageCodecInfo.GetImageEncoders().Single(predicateImageCodeInfo => predicateImageCodeInfo.MimeType == "image/jpeg");
                EncoderParameters encoderParameters = new EncoderParameters(1);
                encoderParameters.Param[0] = new EncoderParameter(Encoder.Quality, 100l);
                bitmap.Save(response.OutputStream, imageCodecInfo, encoderParameters);
                bitmap.Dispose();
            }
            else
            {
                response.StatusCode = 404;
                response.End();
            }
        }

        #endregion
    }
}
