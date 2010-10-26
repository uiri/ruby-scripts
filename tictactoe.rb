require 'gtk2'

$window = Gtk::Window.new
$window.set_default_size(300, 300)
$table = Gtk::Table.new(3, 3, true)
$window.add($table)
$first = 'a'
$second = 'b'
$third = 'c'
$fourth = 'd'
$fifth = 'e'
$sixth = 'f'
$seventh = 'g'
$eighth = 'h'
$ninth = 'i'

def create(x, y, z, a)
  z = Gtk::Button.new("X or O", false)
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
        z.set_label("x")
        a = 'x'
        if $second == $third and $first == $second or $first == $third and $second == $third or $first == $second and $third == $first or $fourth == $seventh and $first == $fourth or $fourth == $first and $seventh == $fourth or $seventh == $first and $fourth == $first  or $fifth == $ninth and $first == $ninth or $fifth == $first and $ninth == $first or $first == $ninth and $fifth == $ninth or $sixth == $ninth and $third == $sixth or $sixth == $third and $ninth == $third or $third == $ninth and $sixth == $ninth or $fifth == $seventh and $third == $fifth or $fifth == $third and $seventh == $third or $seventh == $third and $fifth == $third or $second == $fifth and $eighth == $fifth or $second == $eighth and $fifth == $second or $eighth == $fifth and $second == $fifth or $fourth == $fifth and $sixth == $fifth or $fifth == $sixth and $fourth == $sixth or $fourth == $sixth and $fifth == $sixth or $seventh == $eighth and $ninth == $seventh or $seventh == $ninth and $eighth == $ninth or $eighth == $ninth and $seventh == $ninth
          wins("x")
        else
          puts 'GODDAMNIT!'
        end
        $dialog.destroy
      elsif $entry.text == 'o'
        z.set_label("o")
        a = 'o'
        if $second == $third and $first == $second or $first == $third and $second == $third or $first == $second and $third == $first or $fourth == $seventh and $first == $fourth or $fourth == $first and $seventh == $fourth or $seventh == $first and $fourth == $first  or $fifth == $ninth and $first == $ninth or $fifth == $first and $ninth == $first or $first == $ninth and $fifth == $ninth or $sixth == $ninth and $third == $sixth or $sixth == $third and $ninth == $third or $third == $ninth and $sixth == $ninth or $fifth == $seventh and $third == $fifth or $fifth == $third and $seventh == $third or $seventh == $third and $fifth == $third or $second == $fifth and $eighth == $fifth or $second == $eighth and $fifth == $second or $eighth == $fifth and $second == $fifth or $fourth == $fifth and $sixth == $fifth or $fifth == $sixth and $fourth == $sixth or $fourth == $sixth and $fifth == $sixth or $seventh == $eighth and $ninth == $seventh or $seventh == $ninth and $eighth == $ninth or $eighth == $ninth and $seventh == $ninth
          wins("o")
        else
          puts 'GODDAMNIT!'
        end
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
  $window.destroy
  Gtk.main_quit
  false
end

create(1, 1, $button1, $first)
create(1, 2, $button2, $second)
create(1, 3, $button3, $third)
create(2, 1, $button4, $fourth)
create(2, 2, $button5, $fifth)
create(2, 3, $button6, $sixth)
create(3, 1, $button7, $seventh)
create(3, 2, $button8, $eighth)
create(3, 3, $button9, $ninth)

def wins(x)
  $win = Gtk::Window.new
  $winbox = Gtk::VBox.new
  $playagain = Gtk::Label.new(x + " has won. Do you want to play again?")
  $yes = Gtk::Button.new("yes")
  $no = Gtk::Button.new("no")
  $buttonbox = Gtk::HBox.new
  $buttonbox.pack_start($yes, false, false, 0)
  $buttonbox.pack_start($no, false, false, 0)
  $winbox.pack_start($playagain, false, false, 0)
  $winbox.pack_start($buttonbox, false, false, 0)

  $yes.signal_connect( "clicked" ) do
    $win.destroy
    $button1 =  Gtk::Button.new("X or O", false)
    $button2 =  Gtk::Button.new("X or O", false)
    $button3 =  Gtk::Button.new("X or O", false)
    $button4 =  Gtk::Button.new("X or O", false)
    $button5 =  Gtk::Button.new("X or O", false)
    $button6 =  Gtk::Button.new("X or O", false)
    $button7 =  Gtk::Button.new("X or O", false)
    $button8 =  Gtk::Button.new("X or O", false)
    $button9 =  Gtk::Button.new("X or O", false)
  end

  $no.signal_connect( "clicked" ) do
    $win.destroy
    $window.destroy
    Gtk.main_quit
    false
  end
  $win.add($winbox)
  $win.show_all
end

$window.show_all

Gtk.main
