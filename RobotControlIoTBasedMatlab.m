function varargout = RobotControlIoTBasedMatlab(varargin)
% ROBOTCONTROLIOTBASEDMATLAB MATLAB code for RobotControlIoTBasedMatlab.fig
%      ROBOTCONTROLIOTBASEDMATLAB, by itself, creates a new ROBOTCONTROLIOTBASEDMATLAB or raises the existing
%      singleton*.
%
%      H = ROBOTCONTROLIOTBASEDMATLAB returns the handle to a new ROBOTCONTROLIOTBASEDMATLAB or the handle to
%      the existing singleton*.
%
%      ROBOTCONTROLIOTBASEDMATLAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTCONTROLIOTBASEDMATLAB.M with the given input arguments.
%
%      ROBOTCONTROLIOTBASEDMATLAB('Property','Value',...) creates a new ROBOTCONTROLIOTBASEDMATLAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RobotControlIoTBasedMatlab_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RobotControlIoTBasedMatlab_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RobotControlIoTBasedMatlab

% Last Modified by GUIDE v2.5 30-Nov-2017 09:20:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RobotControlIoTBasedMatlab_OpeningFcn, ...
                   'gui_OutputFcn',  @RobotControlIoTBasedMatlab_OutputFcn, ...
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


% --- Executes just before RobotControlIoTBasedMatlab is made visible.
function RobotControlIoTBasedMatlab_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RobotControlIoTBasedMatlab (see VARARGIN)

% Choose default command line output for RobotControlIoTBasedMatlab
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RobotControlIoTBasedMatlab wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RobotControlIoTBasedMatlab_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
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
val=get(handles.pushbutton1,'string');
if strcmp(val,'OFF')
    set(handles.pushbutton1,'string','ON');
    set(handles.pushbutton1,'BackgroundColor','green');
    UpdateXMLValue(hObject, eventdata, handles, 1);
elseif strcmp(val,'ON')
    set(handles.pushbutton1,'string','OFF');
    set(handles.pushbutton1,'BackgroundColor','Red');
    UpdateXMLValue(hObject, eventdata, handles, 0);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
UpdateXMLValue(hObject, eventdata, handles, 2);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
UpdateXMLValue(hObject, eventdata, handles, 3);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
UpdateXMLValue(hObject, eventdata, handles, 5);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
UpdateXMLValue(hObject, eventdata, handles, 4);

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
UID=get(handles.edit1,'string');
Pin=get(handles.edit2,'string');
ControlValue=0;
resp=UpdateXML(UID, Pin, ControlValue);
if strcmp(resp,'Done')
    msgbox('Initialization done successfully','Success','modal');
else
    msgbox('Initialization failed. Check internet connectivity','Error','error');
end

function UpdateXMLValue(hObject, eventdata, handles, ControlValue)
UID=get(handles.edit1,'string');
Pin=get(handles.edit2,'string');
resp=UpdateXML(UID, Pin, ControlValue);
if ControlValue==0
    ControlValueS='OFF';
elseif ControlValue==1
    ControlValueS='ON';
elseif ControlValue==2
    ControlValueS='forward';
elseif ControlValue==3
    ControlValueS='back';
elseif ControlValue==4
    ControlValueS='right';
elseif ControlValue==5
    ControlValueS='left';
end
if strcmp(resp,'Done')
    set(handles.text6,'string',ControlValueS);
else
    msgbox('Initialization failed. Check internet connectivity','Error','error');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
