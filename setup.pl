#!/user/local/bin/perl

use strict;
use warnings;
use utf8;

use Term::ANSIColor qw( :constants );
$Term::ANSIColor::AUTORESET = 1;

#
# メイン処理
#
sub main
{
    info('############ set up start. ############');

    # 引数がない
    if (@ARGV == 0) {
        error("invalid argument. please assign home dir.");
        &print_usage();
        exit(1);
    }

    my $home = $ARGV[0] . '/';

    # インストール先のディレクトリがない
    if (!(-d $home)) {
        error("invalid path. '$home' not exists");
        &print_usage();
        exit(1);
    }

    # ドットファイルコピー
    &copy_dotfiles($home);
    # NeoBundleインストール
    &install_NeoBundle($home);

    success();

    exit(0);
}

#
# dotファイルをホームディレクトリにコピーする
#
sub copy_dotfiles
{
    my ($home) = shift;
    my $file_root = './files';
    exec_cmd("cp $file_root/.bash_profile $home");
    exec_cmd("cp $file_root/.bashrc $home");
    exec_cmd("cp $file_root/.profile $home");
    exec_cmd("cp $file_root/.vimrc $home");
    exec_cmd("cp -r $file_root/.vim $home");
}


#
# vimのNeoBundleプラグインをインストールする
#
sub install_NeoBundle
{
    my ($home) = shift;

    info(">>>> start install NeoBundle");

    if (-d "$home/.vim/bundle") {
        info("NeoBundle is already installed.");
    } else {
        info("now installing NeoBundle");
        exec_cmd("mkdir -p $home/.vim/bundle");
        exec_cmd("git clone git://github.com/Shougo/neobundle.vim $home/.vim/bundle/neobundle.vim");
        # gitでコミット実行時、利用エディタをvimに設定
        exec_cmd("git config --global core.editor "vim"");
    }
}

#
# コマンドを実行する
#
sub exec_cmd
{
    my ($cmd) = shift;
    info($cmd);
    my $output = `$cmd 2>&1`;
    chomp($output);
    my $status = $? / 256;
    return ($status, $output);
}

#
# Usageを表示する
#
sub print_usage
{
    error("*********** Usage ***********");
    error("perl setup.pl /home/mtaji");
}

#
# ログ出力
#
sub info    { _log('INFO' , shift);            } # INFO
sub error   { _log('ERROR', shift);            } # ERROR
sub success { _log('OK'   , 'success!!!!!!!'); } # SUCCESS
sub _log
{
    my ($level, $message) = @_;
    print "[";
    # レベル毎に色付け
    if ($level eq 'INFO') {
        print BLUE $level;
    } elsif ($level eq 'ERROR') {
        print RED $level;
    } elsif ($level eq 'OK') {
        print GREEN $level;
    }
    print "]";
    print "$message\n"
}

# 処理を実行
&main();
