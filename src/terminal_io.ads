--
--
--

with Database.Jobs;

package Terminal_IO is

   procedure Put_Jobs;
   --  Put list of jobs from Navigate.List.

   procedure Show_Job (Job : in Database.Jobs.Job_Id);
   procedure Put_Help;
   procedure Put_Error (Text : in String);
   procedure Put_Banner;
   procedure Put_Path;

end Terminal_IO;
