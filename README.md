该UiPath项目需要额外两个项目辅助
1.Vendor_Protal_RPA_Epicor_Download_Files
https://github.com/BSCHK/Vendor_Protal_RPA_Epicor_Download_Files.git
clone该项目下来，利用Visual Studio打开项目，并且在Release模式下编译生成dll，把.\Vendor_Protal_RPA_Epicor_Download_Files\bin\Release中的全部文件（其实只复制dll也可）复制到.\DLLs\Epicor_Download_Files下，如果没有该文件夹就新建

2.Vendor_Protal_RPA_Roca_Upload_Files
https://github.com/BSCHK/Vendor_Protal_RPA_Roca_Upload_Files.git
clone该项目下来，利用Visual Studio打开项目，并且在Release模式下编译生成dll，把.\Vendor_Protal_RPA_Roca_Upload_Files\bin\Release中的全部文件（其实只复制dll也可）复制到.\DLLs\Roca_Upload_Files下，如果没有该文件夹就新建