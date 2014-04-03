package InsertUploadpath::CMS;
use strict;

sub _replace_template {

    my ($eh, $app, $tmpl_ref) = @_;

    my $old;
    my $new;

    $old = <<'HTML';
     </select> / <input type="text" name="extra_path" id="extra_path" class="text path" value="<mt:var name="extra_path" escape="html">" />
HTML
    $new = <<"HTML";
     </select> / <input type="text" name="extra_path" id="extra_path" class="text path" value="<mt:Unless name="extra_path"><mt:Date format="%Y/%m"><mt:Else><mt:var name="extra_path" escape="html"></mt:Unless>" />
HTML
    $old = quotemeta($old);
    $$tmpl_ref =~ s!$old!$new!;
}
1;
