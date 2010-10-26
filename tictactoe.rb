require 'gtk2'

$window = Gtk::Window.new
$window.set_default_size(300, 300)
$table = Gtk::Table.new(3, 3, true)
$window.add($table)

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
        $dialog.destroy
      elsif $entry.text == 'o'
        z.set_label("o")
        a = 'o'
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
    $button1.set_label('X or O')
    $button2.set_label('X or O')
    $button3.set_label('X or O')
    $button4.set_label('X or O')
    $button5.set_label('X or O')
    $button6.set_label('X or O')
    $button7.set_label('X or O')
    $button8.set_label('X or O')
    $button9.set_label('X or O')
  end

  $no.signal_connect( "clicked" ) do
    $win.destroy
    $window.destroy
  end
end

if $first == 'x'
  if $second == $third
    if $first == $second
      wins("x")
    end
  elsif $fourth == $seventh
    if $first == $fourth
      wins("x")
    end
  elsif $fifth == $ninth
    if $first == $fifth
      wins("x")
    end
  else
  end
elsif $first == 'o'
   if $second == $third
    if $first == $second
      wins("o")
    end
  elsif $fourth == $seventh
    if $first == $fourth
      wins("o")
    end
  elsif $fifth == $ninth
    if $first == $fifth
      wins("o")
    end
  else
  end 
elsif $third == 'o'
  if $sixth == $ninth
    if $third == $sixth
      wins("o")
    end
  elsif $fifth == $seventh
    if $third == $fifth
      wins("o")
    end
  else
  end
elsif $third == 'x'
  if $sixth == $ninth
    if $third == $sixth
      wins("x")
    end
  elsif $fifth == $seventh
    if $third == $fifth
      wins("x")
    end
  else
  end
elsif $second == $fifth
  if $fifth == $eighth
    if $second == 'x'
      wins("x")
    elsif $second == 'o'
      wins("o")
    else
    end
  end
elsif $fourth == $fifth
  if $fifth == $sixth
    if $fourth == 'x'
      wins("x")
    elsif $fourth == 'o'
      wins("o")
    else
    end
  end
elsif $seventh == $eighth
  if $eighth == $ninth
    if $seventh == 'x'
      wins("x")
    elsif $seventh == 'o'
      wins("o")
    else
    end
  end
else
end

$window.show_all

Gtk.main
