using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVM.Model
{
    public interface IPanel
    {
        void SetCurrentPath(string path);
        string ReturnCurrentPath();
        string[] ReturnListOfDrives();
        void SetListOfDrives(string[] list_of_drives);
        List<IPath> ReturnListOfPaths();
    }

    public interface IListOfDrives
    {
        string[] ReturnListOfDrives();
        void SetListOfDrives(string[] list_of_drives);
    }

    public interface IListOfPaths
    {
        void SetListOfPaths(List<IPath> list_of_paths);
        List<IPath> ReturnListOfPaths(IPath actual_path, IListOfDrives list_of_drives);
    }

    public interface IPath
    {
        string ReturnPath();

        void SetPath(string path);

        string ReturnRepresentation();

        string ReturnFileName();
    }

    public interface ICopy
    {
        void copyFile(string source, string target);
    }
}
