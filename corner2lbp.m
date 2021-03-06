function [gly_crop, gly_crop_norm, gly_crop_mean, gly_crop_std] = corner2lbp(img, p, tsize)
%   (r1,c1) ***** (r3,c3)            (1,1) ***** (1,cols)
%     *             *                  *           *
%      *             *       ----->     *           *
%       *             *                  *           *
%     (r2,c2) ***** (r4,c4)              (rows,1) **** (rows,cols)
afnv_obj = corners2afnv( p, tsize);
%afnv_obj = corners2afnv( [r1,r2,r3;c1,c2,c3], tsize);
map_afnv = afnv_obj.afnv;
img_map1 = IMGaffine_r(img, map_afnv, tsize);
    img_map = zeros(18,18);
    [uu1,uu2] = size(img_map1);
    img_map(2:uu1+1,2:uu2+1) = img_map1;
% img_map = IMGaffine_r(img, map_afnv, tsize);
% img_map1 = [zeros(1,16);img_map;zeros(1,16)];
% img_map = [zeros(18,1),img_map1, zeros(18,1)];  %矩阵扩充为了LBP输出结果与原图像大小对应
SP = [-1 -1; -1 0; -1 1; 0 -1; -0 1; 1 -1; 1 0; 1 1];
H1 = double(LBP(img_map,SP,0,'i'));
H1 = LBP(img_map,SP,0,'i');
%imshow(H1,[]);
[m, n] = size(H1);
H1 = double(H1);
[gly_crop,gly_crop_mean,gly_crop_std] = gly_zmuv( reshape(H1, m*n,1) ); %gly_crop is a vector
gly_crop_norm = norm(gly_crop);
gly_crop = gly_crop/gly_crop_norm;
