function [crop,crop_norm,crop_mean,crop_std] = generateTemplates(sid,tsize,sfno,fprefix,fext,nt,illumination,numzeros)
%   (r1,c1) ***** (r3,c3)            (1,1) ***** (1,cols)
%     *             *                  *           *
%      *             *       ----->     *           *
%       *             *                  *           *
%     (r2,c2) ***** (r4,c4)              (rows,1) **** (rows,cols)
% r1,r2,r3;
% c1,c2,c3


if(strcmp(sid,'seg1')==1)
    p{1} = [60 170 60;
        20  20 200];
    
    p{2} = [55 166 55;
        17 17  204];
    
    p{3} = [58 164 58;
        18 18  205];
    
    p{4} = [54 164 54;
        19 19  205];
    
    p{5} = [55 163 55;
        32 32  209];
    
    p{6} = [55 163 55;
        34 34  210];
    
    p{7} = [63 164 63;
        38 38  209];
    
    p{8} = [59 165 59;
        36 38  211];
    
    p{9} = [60 165 60;
        38 38  212];
    
    p{10} = [58 164 58;
        41 41  213];
    
elseif(strcmp(sid,'pktest01')==1)
    
    %pktest01 frame 01345
    p{1} = [121 137 114;
        143 162 152];
    
    p{2} = [121 136 114;
        141 161 150];
    
    p{3} = [120 136 114;
        141 160 150];
    
    p{4} = [120 138 114;
        139 159 149];
    
    p{5} = [121 136 113;
        139 158 149];
    
    p{6} = [121 136 114;
        138 158 150];
    
    p{7} = [121 136 114;
        138 158 147];
    
    p{8} = [121 136 113;
        138 158 148];
    
    p{9} = [121 137 114;
        136 156 145];
    
    p{10} = [120 136 113;
        136 156 146];
    
    
elseif(strcmp(sid,'pktest02')==1)
    %pktest02 frame 1087
    if(sfno == 1087)
        p{1} = [128 150 120;
            116 136 129];
        
        p{2} = [126 149 120;
            116 138 129];
        
        p{3} = [126 150 121;
            119 139 133];
        
        p{4} = [127 149 121;
            121 142 135];
        
        p{5} = [127 149 122;
            122 143 136];
        
        p{6} = [127 150 121;
            124 144 136];
        
        p{7} = [128 151 121;
            124 145 137];
        
        p{8} = [127 150 122;
            126 146 139];
        
        p{9} = [127 150 121;
            127 148 140];
        
        p{10} = [127 151 122;
            127 148 142];
        
    elseif(sfno == 12)
        %pktest02 frame 12
        p{1} = [129  115 143;
            104  114  135];
    end
elseif(strcmp(sid,'car4')==1)
    p{1} = [54   121    54;
    73    73   174];
    p{2} = [56   121    56;
    70    70   172];
    p{3} = [56   120    56;
    71    71   173];
    p{4} = [56   122    56;
    71    71   171];
    p{5} = [54   122    54;
    71    71   170];
    p{6} = [ 55   122    55;
    71    71   170];
    p{7} = [58   122    58;
    69    69   169];
    p{8} = [57   122    57;
    70    70   169];
    p{9} = [56   121    56;
    70    70   168];
    p{10} =[57   123    57;
    68    68   168];
elseif(strcmp(sid,'car4_2')==1)
    %frame 168
    p{1} = [ 67    117  67;
            113   113  185];
    p{2} = [68    117 68;
        113   113 184 ];
    p{3} = [69   117 69   ;
   114   114 186   ];
    p{4} = [68  118  68   ;
   116  116 186   ];
    p{5} = [69  118  69   ;
   115  115 186   ];
    p{6} = [70 118   70   ;
   116  116 187   ];
    p{7} = [70  118  70   ;
   115  115 187   ];
    p{8} = [70  119  70   ;
   117  117 187   ];
    p{9} = [71  118  71   ;
   117  117 188   ];
    p{10} = [70  117  70   ;
   118  118  188   ];
elseif(strcmp(sid,'car4_3')==1)
    %frame 172
    p{1} = [ 69   128    69;
        114   114   188];
    p{2} = [70   129    70;
   116   116   189];
    p{3} = [70   129    70;
   116   116   187];
    p{4} = [70   130    70;
   117   117   190];
    p{5} = [69   129    69;
   117   117   190];
    p{6} = [69   129    69;
   117   117   190];
    p{7} = [68   128    68;
   117   117   190];
    p{8} = [69   126    69;
   120   120   191];
    p{9} = [68   125    68;
   120   120   192];
    p{10} = [65   125    65;
   120   120   192];
elseif(strcmp(sid,'car4_4')==1)
    %frame 172 smaller rect
    p{1} = [68   119    68;
   114   114   186];
    p{2} = [69   120    69;
   114   114   189];
    p{3} = [71   119    71;
   116   116   186];
    p{4} = [69   120    69;
   117   117   188];
    p{5} = [ 70   119    70;
   118   118   187];
    p{6} = [69   118    69;
   117   117   189];
    p{7} = [71   117    71;
   118   118   190];
    p{8} = [68   116    68;
   118   118   192];
    p{9} = [67   119    67;
   120   120   192];
    p{10} = [66   115    66;
   120   120   190];
elseif(strcmp(sid,'oneleaveshop')==1)
    %frame 172 smaller rect
    p{1} = [133   246   133;
   133   133   163];
    p{2} = [133   247   133;
   131   131   164];
    p{3} = [133   246   133;
   131   131   165];
    p{4} = [133   244   133;
   131   131   168];
    p{5} = [131   240   131;
   130   130   166];
    p{6} = [129   241   129;
   130   130   164];
    p{7} = [128   240   128;
   129   129   164];
    p{8} = [128   239   128;
   130   130   164];
    p{9} = [128   239   128;
   128   128   165];
    p{10} = [128   239   128;
   128   128   161];
end

crop = zeros(prod(tsize),nt);
nz=strcat('%0',num2str(numzeros),'d');
for n=1:nt
    image_no = sfno+n-1;
     fid = sprintf(nz, image_no);
    img_name = strcat(fprefix,fid,'.',fext);
    
    img = imread(img_name);
    img = rgb2gray(img);
    img = double(img);
    
    p{n} = p{n} + [0  19 0;0 0 0];
    [crop(:,n),crop_norm(n),crop_mean(n),crop_std(n)] = corner2image(img, p{n}, tsize, illumination);
    
end


