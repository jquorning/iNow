--
--  Interactive
--  TODO terminal user interface
--

with GNATCOLL.Readline;

with Readline_Helper;

package body Interactive is

   History_File : constant String := "to-do-it.history";

   procedure Initialize is
   begin
      GNATCOLL.Readline.Initialize
        (Appname      => "to-do-it",
         History_File => History_File,
         Completer    => Readline_Helper.Completer'Access);
   end Initialize;


   procedure Finalize is
   begin
      GNATCOLL.Readline.Finalize (History_File);
   end Finalize;


   function Get_Line return String is
   begin
      return GNATCOLL.Readline.Get_Line ("TODO$ ");
   end Get_Line;


end Interactive;

