# use strict;
# use warnings;
# use diagnostics; 

my $date_time = "date_time.txt";
my @date_time_str = (); 
my $year;
my $month;
my $day;
my $hour;
my $min;
my $sec;
my $microsec; 
my $file_line; 
my $arr_length; 
my $date;
my $time; 
my $seconds; 
my $new_date_format;
my $new_time_format;
my $new_date_time_format; 

# open the file 

open(my $FH, '<', $date_time) or die $!;

# print out the date and time as a string

print("File $date_time opened successfully!\n");
chomp($file_line = <$FH>);
print $file_line;
$date_time_str = $file_line; 
print "\n\nThe date and time data are $date_time_str\n\n";
close($FH);

# split the date and time 

($date, $time) = split (" ", $date_time_str,2);

print "\nDate: $date\n\n";
print "\nTime: $time\n\n";

# further split the dates and times components 

($year, $month, $day) = split("-", $date,3); 
print "\nYear: $year\n\n";
print "\nMonth: $month\n\n";
print "\nDay: $day\n\n";
($hour, $min, $sec) = split(":", $time,3); 
print "\nHour: $hour\n\n"; 
print "\nMinute: $min\n\n"; 
print "\nSeconds with Microseconds: $sec\n\n";
($seconds, $microsec) = split(/\./, $sec,2); 
print "\nSeconds: $seconds\n\n";
print "\nmsec: $microsec\n\n";

# new date_time format in YYYYMMDD_HHMMSS style

$new_date_format = join("",$year,$month,$day); 
$new_time_format = join("",$hour,$min,$seconds);
$new_date_time_format = join("_", $new_date_format, $new_time_format);

# print out the new date and time format

print "\n$new_date_format\n\n"; 
print "\n$new_time_format\n\n"; 
print "\n$new_date_time_format\n\n";

my $old_file_name = "test_log.txt"; 

my $new_file_name = "$new_date_time_format\_log.txt";

rename($old_file_name, $new_file_name) || die "Unable to rename text file!\n\n";

unlink($date_time) || die "Unable to delete $date_time\n\n";

