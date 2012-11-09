#!/usr/bin/perl

use XML::LibXSLT;
use XML::LibXML;

my $num_args = $#ARGV + 1;
if ($num_args != 2) {
  print "Usage: $0 XML_FILE XSLT_FILE\n";
  print "Applies XSLT transformation to XML_FILE according to XSLT_FILE\n\n"; 
  print "If you want save results to a file, use output redirection:\n";
  print "  $0 XML_FILE XSLT_FILE > OUTPUT_FILE\n";
  exit;
}

my $parser = XML::LibXML->new();
my $xslt = XML::LibXSLT->new();

my $xmlfile = $ARGV[0];
my $xsl = $ARGV[1];


my $source = $parser->parse_file($xmlfile);
my $style_doc = $parser->parse_file($xsl);

my $stylesheet = $xslt->parse_stylesheet($style_doc);

my $results = $stylesheet->transform($source);

#open (OUTFILE, ">out.xml");
#print OUTFILE $stylesheet->output_string($results);

print $stylesheet->output_string($results);
