'# MWS Version: Version 2023.3 - Feb 23 2023 - ACIS 32.0.1 -

'# length = mm
'# frequency = GHz
'# time = s
'# frequency range: fmin = 0.0 fmax = 8
'# created = '[VERSION]2017.1|26.0.1|20170224[/VERSION]


'@ define units

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Units 
     .Geometry "mm" 
     .Frequency "GHz" 
     .Time "s" 
     .TemperatureUnit "Kelvin" 
     .Voltage "V" 
     .Current "A" 
     .Resistance "Ohm" 
     .Conductance "Siemens" 
     .Capacitance "PikoF" 
     .Inductance "NanoH" 
End With

'@ define frequency range

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
Solver.FrequencyRange "0.0", "8"

'@ define background

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Background 
     .ResetBackground 
     .XminSpace "0.0" 
     .XmaxSpace "0.0" 
     .YminSpace "0.0" 
     .YmaxSpace "0.0" 
     .ZminSpace "0.0" 
     .ZmaxSpace "0.0" 
     .ApplyInAllDirections "False" 
End With 
With Material 
     .Reset 
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "Hz"
     .MaterialUnit "Geometry", "m"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Epsilon "1"
     .Mu "1"
     .Sigma "0.0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .EnableUserConstTanDModelOrderEps "False"
     .ConstTanDModelOrderEps "1"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .EnableUserConstTanDModelOrderMu "False"
     .ConstTanDModelOrderMu "1"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NonlinearMeasurementError "1e-1"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .HeatCapacity "0"
     .DynamicViscosity "0"
     .Emissivity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0.6", "0.6", "0.6" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeBackgroundMaterial
End With

'@ define boundaries

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Boundary
     .Xmin "expanded open"
     .Xmax "expanded open"
     .Ymin "expanded open"
     .Ymax "expanded open"
     .Zmin "expanded open"
     .Zmax "expanded open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
     .ApplyInAllDirections "True"
End With

'@ define material: Copper (annealed)

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Material
     .Reset
     .Name "Copper (annealed)"
     .Folder ""
     .FrqType "static"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .DispersiveFittingSchemeMu "Nth Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .FrqType "all"
     .Type "Lossy metal"
     .SetMaterialUnit "GHz", "mm"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .HeatCapacity "0.39"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .Colour "1", "1", "0"
     .Wireframe "False"
     .Reflection "False"
     .Allowoutline "True"
     .Transparentoutline "False"
     .Transparency "0"
     .Create
End With

'@ new component: component1

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
Component.New "component1"

'@ define cylinder: component1:feed

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Cylinder 
     .Reset 
     .Name "feed" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .OuterRadius "diam_feed/2" 
     .InnerRadius "0.0" 
     .Axis "y" 
     .Yrange "0", "L" 
     .Xcenter "0" 
     .Zcenter "0" 
     .Segments "0" 
     .Create 
End With

'@ define material: Teflon (PTFE) (lossy)

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Material
     .Reset
     .Name "Teflon (PTFE) (lossy)"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "GHz", "mm"
     .Epsilon "2.1"
     .Mu "1.0"
     .Kappa "0.0"
     .TanD "0.0002"
     .TanDFreq "10.0"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .KappaM "0.0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstKappa"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "General 1st"
     .DispersiveFittingSchemeMu "General 1st"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Rho "2200.0"
     .ThermalType "Normal"
     .ThermalConductivity "0.2"
     .HeatCapacity "1.0"
     .SetActiveMaterial "all"
     .MechanicsType "Isotropic"
     .YoungsModulus "0.5"
     .PoissonsRatio "0.4"
     .ThermalExpansionRate "140"
     .Colour "0.94", "0.82", "0.76"
     .Wireframe "False"
     .Transparency "0"
     .Create
End With

'@ define cylinder: component1:teflon

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Cylinder 
     .Reset 
     .Name "teflon" 
     .Component "component1" 
     .Material "Teflon (PTFE) (lossy)" 
     .OuterRadius "diam_teflon/2" 
     .InnerRadius "diam_feed/2" 
     .Axis "y" 
     .Yrange "0", "L" 
     .Xcenter "0" 
     .Zcenter "0" 
     .Segments "0" 
     .Create 
End With

'@ set shape accuracy

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
Solid.ShapeVisualizationAccuracy2 "120" 
Solid.ShapeVisualizationOffset "0" 
Pick.ClearAllPicks

'@ define cylinder: component1:shield

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Cylinder 
     .Reset 
     .Name "shield" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .OuterRadius "diam_teflon/2+espesor_shield" 
     .InnerRadius "diam_teflon/2" 
     .Axis "y" 
     .Yrange "0", "L" 
     .Xcenter "0" 
     .Zcenter "0" 
     .Segments "0" 
     .Create 
End With

'@ define material: Teflon (PTFE) (loss free)

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Material
     .Reset
     .Name "Teflon (PTFE) (loss free)"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "GHz", "mm"
     .Epsilon "2.1"
     .Mu "1.0"
     .Kappa "0.0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0.0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstKappa"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "General 1st"
     .DispersiveFittingSchemeMu "General 1st"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Rho "2200.0"
     .ThermalType "Normal"
     .ThermalConductivity "0.2"
     .HeatCapacity "1.0"
     .SetActiveMaterial "all"
     .MechanicsType "Isotropic"
     .YoungsModulus "0.5"
     .PoissonsRatio "0.4"
     .ThermalExpansionRate "140"
     .Colour "0.75", "0.95", "0.85"
     .Wireframe "False"
     .Transparency "0"
     .Create
End With

'@ define cylinder: component1:jacket

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Cylinder 
     .Reset 
     .Name "jacket" 
     .Component "component1" 
     .Material "Teflon (PTFE) (loss free)" 
     .OuterRadius "diam_teflon/2+espesor_shield+espesor_jacket" 
     .InnerRadius "diam_teflon/2+espesor_shield" 
     .Axis "y" 
     .Yrange "0", "L" 
     .Xcenter "0" 
     .Zcenter "0" 
     .Segments "0" 
     .Create 
End With

'@ pick face

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
Pick.PickFaceFromId "component1:teflon", "1"

'@ define port: 1

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Port 
     .Reset 
     .PortNumber "1" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-1.46", "1.46" 
     .Yrange "0", "0" 
     .Zrange "-1.46", "1.46" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ pick face

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
Pick.PickFaceFromId "component1:teflon", "3"

'@ define port: 2

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Port 
     .Reset 
     .PortNumber "2" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-1.46", "1.46" 
     .Yrange "100", "100" 
     .Zrange "-1.46", "1.46" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ define monitor: e-field (f=2.4)

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=2.4)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .Frequency "2.4" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-2.46", "2.46", "0", "100", "-2.46", "2.46" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: h-field (f=2.4)

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Monitor 
     .Reset 
     .Name "h-field (f=2.4)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Hfield" 
     .Frequency "2.4" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-2.46", "2.46", "0", "100", "-2.46", "2.46" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: surface-current (f=2.4)

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Monitor 
     .Reset 
     .Name "surface-current (f=2.4)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Surfacecurrent" 
     .Frequency "2.4" 
     .Create 
End With

'@ define monitor: power (f=2.4)

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
With Monitor 
     .Reset 
     .Name "power (f=2.4)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Powerflow" 
     .Frequency "2.4" 
     .Create 
End With

'@ define time domain solver parameters

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ change solver type

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
ChangeSolverType "HF Time Domain"

'@ switch working plane

'[VERSION]2017.1|26.0.1|20170224[/VERSION]
Plot.DrawWorkplane "false"

'@ pick face

'[VERSION]2019.7|28.0.2|20190705[/VERSION]
Pick.PickFaceFromId "component1:teflon", "1"

'@ s-parameter post processing: yz-matrices

'[VERSION]2019.7|28.0.2|20190705[/VERSION]
PostProcess1D.ActivateOperation "yz-matrices", "TRUE"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:teflon", "4", "4", "0"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:shield", "4", "4", "0"

'@ define lumped element: Folder1:element1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With LumpedElement
     .Reset 
     .SetName "element1" 
     .Folder "Folder1" 
     .SetType "RLCSerial"
     .SetR "1000000"
     .SetL "0"
     .SetC "0"
     .SetGs "0"
     .SetI0 "1e-14"
     .SetT "300"
     .SetMonitor "True"
     .SetRadius "0.0"
     .CircuitFileName ""
     .CircuitId "1"
     .UseCopyOnly "True"
     .UseRelativePath "False"
     .SetP1 "True", "0.4", "100", "2.4492935982947e-17" 
     .SetP2 "True", "1.46", "100", "8.9399216337757e-17" 
     .SetInvert "False" 
     .Wire "" 
     .Position "end1" 
     .Create
End With

'@ s-parameter post processing: vswr

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
PostProcess1D.ActivateOperation "vswr", "TRUE"

'@ delete port: port2

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Port.Delete "2"

'@ clear picks

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.ClearAllPicks

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:teflon", "4", "4", "1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:shield", "4", "4", "1"

'@ define bondwire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Wire
     .Reset 
     .Name "wire1" 
     .Folder "Folder1" 
     .Type "BondWire" 
     .Height "0.53" 
     .Radius "0.1" 
     .Point1 "4.8985871965894e-17", "100", "-0.4", "True"
     .Point2 "1.7879843267551e-16", "100", "-1.46", "True" 
     .BondWireType "Spline" 
     .Alpha "75" 
     .Beta "35" 
     .RelativeCenterPosition "0.5" 
     .Material "PEC" 
     .SolidWireModel "True" 
     .Termination "Rounded" 
     .Add
End With

'@ delete lumped element: Folder1:element1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
LumpedElement.Delete "Folder1:element1"

'@ delete wire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Wire.Delete "Folder1:wire1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:teflon", "4", "4", "1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:shield", "4", "4", "1"

'@ define bondwire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Wire
     .Reset 
     .Name "wire1" 
     .Folder "Folder1" 
     .Type "BondWire" 
     .Height "0.53" 
     .Radius "0.0" 
     .Point1 "4.8985871965894e-17", "100", "-0.4", "True"
     .Point2 "1.7879843267551e-16", "100", "-1.46", "True" 
     .BondWireType "Spline" 
     .Alpha "75" 
     .Beta "35" 
     .RelativeCenterPosition "0.5" 
     .Material "PEC" 
     .SolidWireModel "False" 
     .Termination "Extended" 
     .Add
End With

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:teflon", "4", "4", "0"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:shield", "4", "4", "0"

'@ define curve polygon: curve1:polygon1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Polygon 
     .Reset 
     .Name "polygon1" 
     .Curve "curve1" 
     .Point "0", "95" 
     .LineTo "0.4", "78.4" 
     .Create 
End With

'@ define voltage monitor from curve: voltage1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With VoltageMonitor
     .Reset 
     .Name "voltage1" 
     .Curve "curve1:polygon1" 
     .InvertOrientation "False" 
     .Add
End With

'@ clear picks

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.ClearAllPicks

'@ delete curve: curve1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Curve.DeleteCurve "curve1"

'@ define curve line: curve1:line1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Line
     .Reset 
     .Name "line1" 
     .Curve "curve1" 
     .X1 "1.5" 
     .Y1 "100" 
     .X2 "1.5" 
     .Y2 "0" 
     .Create
End With

'@ define voltage monitor from curve: voltage2

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With VoltageMonitor
     .Reset 
     .Name "voltage2" 
     .Curve "curve1:line1" 
     .InvertOrientation "False" 
     .Add
End With

'@ delete voltage monitor: voltage1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
VoltageMonitor.Delete "voltage1"

'@ delete port: port1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Port.Delete "1"

'@ delete wire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Wire.Delete "Folder1:wire1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:teflon", "4", "4", "1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:shield", "4", "4", "1"

'@ define discrete port: 1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .VoltagePortImpedance "0.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "True", "4.8985871965894e-17", "100", "-0.4"
     .SetP2 "True", "1.7879843267551e-16", "100", "-1.46"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ delete port: port1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Port.Delete "1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:teflon", "2", "1", "0"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:shield", "2", "1", "0"

'@ define discrete port: 1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .VoltagePortImpedance "0.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "True", "0.4", "0", "2.4492935982947e-17"
     .SetP2 "True", "1.46", "0", "8.9399216337757e-17"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ align wcs with face

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.ForceNextPick 
Pick.PickFaceFromId "component1:feed", "3" 
WCS.AlignWCSWithSelected "Face"

'@ define cylinder: component1:short

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Cylinder 
     .Reset 
     .Name "short" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .OuterRadius "diam_teflon/2+espesor_shield" 
     .InnerRadius "0.0" 
     .Axis "z" 
     .Zrange "0", "espesor_shield" 
     .Xcenter "0" 
     .Ycenter "0" 
     .Segments "0" 
     .Create 
End With

'@ align wcs with global coordinates

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
WCS.AlignWCSWithGlobalCoordinates

'@ delete voltage monitor: voltage2

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
VoltageMonitor.Delete "voltage2"

'@ define curve line: curve1:line1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Line
     .Reset 
     .Name "line1" 
     .Curve "curve1" 
     .X1 "1" 
     .Y1 "0.0" 
     .X2 "1" 
     .Y2 "100" 
     .Create
End With

'@ define voltage monitor from curve: voltage1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With VoltageMonitor
     .Reset 
     .Name "voltage1" 
     .Curve "curve1:line1" 
     .InvertOrientation "False" 
     .Add
End With

'@ align wcs with global coordinates

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
WCS.AlignWCSWithGlobalCoordinates

'@ delete shape: component1:short

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Solid.Delete "component1:short"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:teflon", "4", "4", "0"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:shield", "4", "4", "0"

'@ define bondwire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Wire
     .Reset 
     .Name "wire1" 
     .Folder "Folder1" 
     .Type "BondWire" 
     .Height "0.53" 
     .Radius "0.1" 
     .Point1 "0.4", "100", "2.4492935982947e-17", "True"
     .Point2 "1.46", "100", "8.9399216337757e-17", "True" 
     .BondWireType "Spline" 
     .Alpha "75" 
     .Beta "35" 
     .RelativeCenterPosition "0.5" 
     .Material "Copper (annealed)" 
     .SolidWireModel "True" 
     .Termination "Extended" 
     .Add
End With

'@ delete wire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Wire.Delete "Folder1:wire1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickEndpointFromId "component1:teflon", "4"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickEndpointFromId "component1:shield", "4"

'@ define bondwire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Wire
     .Reset 
     .Name "wire1" 
     .Folder "Folder1" 
     .Type "BondWire" 
     .Height "0.53" 
     .Radius "0.0" 
     .Point1 "0", "100", "0.4", "True"
     .Point2 "0", "100", "1.46", "True" 
     .BondWireType "Spline" 
     .Alpha "75" 
     .Beta "35" 
     .RelativeCenterPosition "0.5" 
     .Material "PEC" 
     .SolidWireModel "False" 
     .Termination "Extended" 
     .Add
End With

'@ delete wire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Wire.Delete "Folder1:wire1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickEndpointFromId "component1:teflon", "4"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickEndpointFromId "component1:shield", "4"

'@ define lumped element: Folder1:element1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With LumpedElement
     .Reset 
     .SetName "element1" 
     .Folder "Folder1" 
     .SetType "RLCSerial"
     .SetR "0.0001"
     .SetL "0"
     .SetC "0"
     .SetGs "0"
     .SetI0 "1e-14"
     .SetT "300"
     .SetMonitor "True"
     .SetRadius "0.0"
     .CircuitFileName ""
     .CircuitId "1"
     .UseCopyOnly "True"
     .UseRelativePath "False"
     .SetP1 "True", "0", "100", "0.4" 
     .SetP2 "True", "0", "100", "1.46" 
     .SetInvert "False" 
     .Wire "" 
     .Position "end1" 
     .Create
End With

'@ delete lumped element: Folder1:element1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
LumpedElement.Delete "Folder1:element1"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:teflon", "4", "4", "0"

'@ pick end point

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Pick.PickExtraCirclepointFromId "component1:shield", "4", "4", "0"

'@ define bondwire: Folder1:wire1

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
With Wire
     .Reset 
     .Name "wire1" 
     .Folder "Folder1" 
     .Type "BondWire" 
     .Height "0.53" 
     .Radius "0.0" 
     .Point1 "0.4", "100", "2.4492935982947e-17", "True"
     .Point2 "1.46", "100", "8.9399216337757e-17", "True" 
     .BondWireType "Spline" 
     .Alpha "75" 
     .Beta "35" 
     .RelativeCenterPosition "0.5" 
     .Material "PEC" 
     .SolidWireModel "False" 
     .Termination "Extended" 
     .Add
End With

'@ change material: component1:teflon to: Vacuum

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Solid.ChangeMaterial "component1:teflon", "Vacuum"

'@ change material: component1:teflon to: Teflon (PTFE) (lossy)

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Solid.ChangeMaterial "component1:teflon", "Teflon (PTFE) (lossy)"

'@ change material: component1:teflon to: Vacuum

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Solid.ChangeMaterial "component1:teflon", "Vacuum"

'@ change material: component1:feed to: Vacuum

'[VERSION]2021.3|30.0.1|20210318[/VERSION]
Solid.ChangeMaterial "component1:feed", "Vacuum"

'@ define time domain solver parameters

'[VERSION]2023.0|32.0.1|20220912[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .RunDiscretizerOnly "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ change material and color: component1:feed to: Copper (annealed)

'[VERSION]2023.3|32.0.1|20230223[/VERSION]
Solid.ChangeMaterial "component1:feed", "Copper (annealed)" 
Solid.SetUseIndividualColor "component1:feed", 1
Solid.ChangeIndividualColor "component1:feed", "255", "255", "0"

'@ change material and color: component1:teflon to: Teflon (PTFE) (loss free)

'[VERSION]2023.3|32.0.1|20230223[/VERSION]
Solid.ChangeMaterial "component1:teflon", "Teflon (PTFE) (loss free)" 
Solid.SetUseIndividualColor "component1:teflon", 1
Solid.ChangeIndividualColor "component1:teflon", "255", "255", "255"

'@ change material and color: component1:jacket to: Teflon (PTFE) (loss free)

'[VERSION]2023.3|32.0.1|20230223[/VERSION]
Solid.SetUseIndividualColor "component1:jacket", 1
Solid.ChangeIndividualColor "component1:jacket", "0", "0", "0"

