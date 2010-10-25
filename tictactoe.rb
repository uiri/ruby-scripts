require 'gtk2'

$window = Gtk::Window.new
$window.set_default_size(300, 300)
$table = Gtk::Table.new(3, 3, true)
$window.add($table)

def create(x, y, z, a)
  z = Gtk::Button.new('X or O')
  $table.attach_defaults(z, y - 1, y, x - 1, x)
  z.signal_connect( "clicked" ) do
    $dialog = Gtk::Window.new
    $entry = Gtk::Entry.new
    $vbox = Gtk::VBox.new
    $ok = Gtk::Button.new("OK")
    $vbox.pack_start($entry, true, false, 0)
    $vbox.pack_start($ok, false, false, 0)
    $dialog.add($vbox)
    $ok.signal_connect( "clicked" ) do
      if $entry.text == 'x'
        a = Gtk::Label.new("X")
        z.destroy
        $table.attach_defaults(a, y - 1, y, x - 1, x)
        $dialog.destroy
      elsif $entry.text == 'o'
        a = Gtk::Label.new("O")
        z.destroy
        $table.attach_defaults(a, y - 1, y, x - 1, x)
        $dialog.destroy
      else
        $error = Gtk::Window.new
        $errorbox = Gtk::HBox.new
        $errormessage = Gtk::Label.new('an error occured', false)
        $errorbutton = Gtk::Button.new("OK")
        $errorbox.pack_start($errormessage, false, false, 0)
        $errorbox.pack_start($errorbutton, false, false, 0)
        $error.add($errorbox)
        $errorbutton.signal_connect( "clicked" ) do
          $error.destroy
        end
        $error.show_all
      end
    end
    $dialog.show_all
  end
end

$window.signal_connect("delete_event") do
    Gtk.main_quit
    false
end

create(1, 1, $button1, $image1)
create(1, 2, $button2, $image2)
create(1, 3, $button3, $image3)
create(2, 1, $button4, $image4)
create(2, 2, $button5, $image5)
create(2, 3, $button6, $image6)
create(3, 1, $button7, $image7)
create(3, 2, $button8, $image8)
create(3, 3, $button9, $image9)

$window.show_all

Gtk.main
