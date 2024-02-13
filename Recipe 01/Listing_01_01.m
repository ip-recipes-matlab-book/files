% Display MATLAB demo images using the Image Browser app
folder = fullfile(matlabroot, '/toolbox/images/imdata');
if exist(folder, 'dir')
  fprintf('Demo Images Folder is %s.\n', folder);
else
  fprintf('Folder %s does not exist.\n', folder);
end
dir(folder)
imageBrowser(folder)