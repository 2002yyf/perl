sub Compare{
    $arr1 = @_[0];
    $arr2 = @_[1];
    if($arr1 eq $arr2){
        print "equal";
    }else{
        print "not equal"
    }
}

sub execute{
    $root = "./";
    $path = @_[0];
    $filePath = $root . $path;
    print "$filePath";s
    system("python3 tr3.py" . $filePath);
}


sub readFile{
    $path1 = "./test1";
    $path2 = "./test2";
    open(DATA1,"<./test1/add.txt") or die "无法打开数据";
    @file1 = <DATA1>;
    open(DATA2,">./test2/add.txt") or die "无法打开数据";
    @file2 = <DATA2>;
    foreach $line(@file1){
        print DATA2 $line;
    }
    # if(@file1[0] eq @file2[0]){
    #     print "equal";
    # }else{
    #     print "not equal";
    # }
    close( DATA1 );
    close( DATA2 );
}

execute(@ARGV[0]);