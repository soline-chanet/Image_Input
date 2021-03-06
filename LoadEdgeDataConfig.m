%% Configuration script for generating InputStruct
    %This structure includes all of the variables needed to extract and
    %interpret Edge data. It is designed to build the input for the
    %function, LoadEdgeDataFun.m.
    
    %IMPORTANT: In order for this workflow to succeed, all the original tif
    %image sequence files must be organized in the standard format, such
    %that if the Root directory is
    %/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/
    
    %the membrane directory is 
    %'/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/Image5_011113/Membranes/Raw/'
    %
    %and the Rok or Myosin directory is 
    %'/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/Image1_011113/Myosin/
    
%% Suggested Workflow
    %Populate Input for all Edged movies to be analyzed, and
    %save these Input structures as "InputStruct_Filename"
    %Next, feed all InputStruct into LoadEdgeDataFun, which will return an
    %output structure. This output structure contains the following
    %information:
        % micron based measurements of centroid, vertex, and perimeter 
    %     Centy: {48x55 cell}          
    %        Centx: {48x55 cell}
    %        Verty: {48x55 cell}
    %        Vertx: {48x55 cell}
    %         Area: [48x55 double]
    %        Perim: {48x55 cell}
    %       SigInt: {48x55 cell}  per cell signal intensity
    %    frame_num: 48     number of frames (time points)
    %     cell_num: 55     number of cells (including imperfect tracks)
    %    Centy_pix: {48x55 cell}   pixel-converted measurements
    %    Centx_pix: {48x55 cell}
    %    Verty_pix: {48x55 cell}
    %    Vertx_pix: {48x55 cell}
    %    Perim_pix: {48x55 cell}
    %membranestack: [545x1064x48 uint8]  membrane movie
    %       signal: [545x1064x48 uint8]  signal movie
    
%% Input
    % adjust these values to match the file you are importing.
    %NOTE: The .injection field is not necessary to populate if your movie 
    %does not contain a live perturbation.
    
I.timestep      = 24.3;
I.xy            = 0.12;
I.z             = 0.89;
I.zslice        = 7;
I.Filename      = 'Image7_121113';
I.memchannel    = 2;
I.signalchannel = 1;
I.Root          = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';
I.edgedslice    = 2;
I.injection     = 1; %this should be NaN if there is no live perturbation

%% Store data in uniquely named structure

Input_Image7_121113 = I; %IMPORTANT: Change this structure name to reflect your image filename
clear I
