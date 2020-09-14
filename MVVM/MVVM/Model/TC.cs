using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace MVVM.Model
{
    class TC
    {
        private string _currentPath;
        public string CurrentPath
        {
            get { return _currentPath; }
            set { _currentPath = value; }
        }

        private string[] _drivesList;
        public string[] DrivesList
        {
            get
            {
                string[] drives = Directory.GetLogicalDrives();
                return drives;
            }
        }

        private string[] _leftContentList;
        public string[] LeftContentList
        {
            get
            {
                string[] content = Directory.GetDirectories(CurrentPath);
                return content;
            }
        }

        public IPanel RightPanel;
        public IPanel LeftPanel;
        public ICopy CopyButton;

        public TC()
        {
            LeftPanel = new Panel(Directory.GetCurrentDirectory());
            RightPanel = new Panel(Directory.GetCurrentDirectory());
            CopyButton = new Copy();
        }

        public TC(string path)
        {
            LeftPanel = new Panel(path);
            RightPanel = new Panel(path);
            CopyButton = new Copy();
        }
    }
}
