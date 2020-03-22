function varargout = guiproject(varargin)
% GUIPROJECT MATLAB code for guiproject.fig
%      GUIPROJECT, by itself, creates a new GUIPROJECT or raises the existing
%      singleton*.
%
%      H = GUIPROJECT returns the handle to a new GUIPROJECT or the handle to
%      the existing singleton*.
%
%      GUIPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPROJECT.M with the given input arguments.
%
%      GUIPROJECT('Property','Value',...) creates a new GUIPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiproject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiproject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiproject

% Last Modified by GUIDE v2.5 08-May-2017 19:47:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiproject_OpeningFcn, ...
                   'gui_OutputFcn',  @guiproject_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before guiproject is made visible.
function guiproject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiproject (see VARARGIN)

% Choose default command line output for guiproject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

    set(handles.m2t,'Visible','off');
    set(handles.text12,'Visible','off');
    set(handles.text14,'Visible','off');
    set(handles.k2t,'Visible','off');
    axes(handles.axes2)
    imshow('onemasspic.jpg')
    axes(handles.axes5)
    imshow('logo.jpg')


% UIWAIT makes guiproject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiproject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

   
    set(handles.m2t,'Visible','off');
    set(handles.text12,'Visible','off');
    set(handles.text14,'Visible','off');
    set(handles.k2t,'Visible','off');
    axes(handles.axes2)
    imshow('onemasspic.jpg')

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.m2t,'Visible','on');
    set(handles.text12,'Visible','on');
    set(handles.text14,'Visible','on');
    set(handles.k2t,'Visible','on');
    axes(handles.axes2)
    imshow('twomasspic.jpg')
% Hint: get(hObject,'Value') returns toggle state of radiobutton2



function m1t_Callback(hObject, eventdata, handles)
% hObject    handle to m1t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m1t as text
%        str2double(get(hObject,'String')) returns contents of m1t as a double


% --- Executes during object creation, after setting all properties.
function m1t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m1t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m2t_Callback(hObject, eventdata, handles)
% hObject    handle to m2t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m2t as text
%        str2double(get(hObject,'String')) returns contents of m2t as a double


% --- Executes during object creation, after setting all properties.
function m2t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m2t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k1t_Callback(hObject, eventdata, handles)
% hObject    handle to k1t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k1t as text
%        str2double(get(hObject,'String')) returns contents of k1t as a double


% --- Executes during object creation, after setting all properties.
function k1t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k1t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k2t_Callback(hObject, eventdata, handles)
% hObject    handle to k2t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k2t as text
%        str2double(get(hObject,'String')) returns contents of k2t as a double


% --- Executes during object creation, after setting all properties.
function k2t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k2t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c1t_Callback(hObject, eventdata, handles)
% hObject    handle to c1t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c1t as text
%        str2double(get(hObject,'String')) returns contents of c1t as a double


% --- Executes during object creation, after setting all properties.
function c1t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_finalt_Callback(hObject, eventdata, handles)
% hObject    handle to y_finalt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_finalt as text
%        str2double(get(hObject,'String')) returns contents of y_finalt as a double


% --- Executes during object creation, after setting all properties.
function y_finalt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_finalt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tst_Callback(hObject, eventdata, handles)
% hObject    handle to Tst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tst as text
%        str2double(get(hObject,'String')) returns contents of Tst as a double


% --- Executes during object creation, after setting all properties.
function Tst_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


m1=str2num(get(handles.m1t,'String'));
m2=str2num(get(handles.m2t,'String'));
k1=str2num(get(handles.k1t,'String'));
k2=str2num(get(handles.k2t,'String'));
c1=str2num(get(handles.c1t,'String'));
y_final=str2num(get(handles.y_finalt,'String'));
Ts=str2num(get(handles.Tst,'String'));


assignin('base','m1',m1);
assignin('base','m2',m2);
assignin('base','k1',k1);
assignin('base','k2',k2);
assignin('base','c1',c1);
assignin('base','y_final',y_final);
assignin('base','Ts',Ts);

value=get(handles.radiobutton1,'Value');
assignin('base','value',value);
if value==1
    sim('simulink1mass')
    axes(handles.axes3)
    plot(mass_1(:,1),mass_1(:,2))
    xlabel('Time (s)')
    ylabel('x (m)')
    
else
    sim('simulink2masses')
    axes(handles.axes3)
    plot(mass_2(:,1),mass_2(:,2),mass_2(:,1),mass_2(:,3))
    xlabel('Time (s)')
    ylabel('x (m)')
    legend('x1','x2')
    
end







% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.m1t,'String','');
set(handles.m2t,'String','');
set(handles.k1t,'String','');
set(handles.k2t,'String','');
set(handles.c1t,'String','');
set(handles.y_finalt,'String','');
set(handles.Tst,'String','');

axes(handles.axes3)
cla('reset')
