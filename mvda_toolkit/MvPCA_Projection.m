function [Y x_mean x_var W_pca]= MvPCA_Projection(X,pca_model_path,pca_options)%pca_dim,b_engergy,energy_ratio)
m = load(pca_model_path, 'x_mean', 'x_var', 'W_pca','eig_value');
x_mean = m.x_mean;
x_var = m.x_var;
eig_value = m.eig_value;
W_pca = m.W_pca;

num_view = size(x_mean,2);
Y = cell(1,num_view);

for i=1:num_view
    x_mean_i = x_mean(:,i);
    x_var_i = x_var(:,i);
    eig_value_i = eig_value(:,i);
    W_pca_i = W_pca{i};
    pca_dim = pca_options.pca_dim;
    %W_pca{i} = W_pca_i;
    W_pca{i} = W_pca_i(:,1:pca_dim);   %��ά
    Y{i} = (W_pca{i})'*ZeroMeanOneVar(X{i},x_mean_i,x_var_i);
    %Y{i} = (W_pca{i})*(W_pca{i})'*ZeroMeanOneVar(X{i},x_mean_i,x_var_i);
end