# StateDMI / Command / WriteParcelsToFile #

* [Overview](#overview)
	+ [Parcel Supply Format](#parcel-supply-format)
	+ [Model Parcel Supply Format](#model-parcel-supply-format)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteParcelsToFile` command (for StateCU and StateMod) writes parcels and related supply data text file report.
The report files are large and verbose and are useful to verify dataset configuration and troubleshoot errors.
If warnings are shown for the command, search the file for `ERROR` to find specific errors.

The model location, parcel and water supply data model is created using the
[`ReadParcelsFromHydroBase`](../ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) command.

### Parcel Supply Format ###

The following is an example of the `ParcelSupply` report format, which is organized from parcel perspective.

```
#> ***************************************************************************************************
#>  StateDMI Parcel / Supply File - this is a diagnostics report
#>  - this report lists each parcel and supplies for the parcel sorted by:
#>      year
#>      division
#>      district
#>      parcel ID
#>  - the parcel data should match orginal GIS irrigated land and supply data
#>  - model data reflect model location identifiers and collections
#>
#>  Parcel Data - GIS loaded into HydroBase, sorted by Year, Div, Dist, ParcelId
#>  --------------------------------------------------------------------------------------------------
#>  Year         :  Calendar year for parcel
#>  Div          :  Water division
#>  Dist         :  Water district - may be zero depending on how parcel data are read
#>                    Current HydroBase design includes WD in digits 2-3 of the parcel ID
#>  ParcelId     :  Parcel identifier
#>  Crop         :  Crop type for parcel (1 crop per parcel)
#>  ParcelArea   :  Parcel area for crop
#>  Units        :  Area units
#>  IrrigMethod  :  Irrigation method
#>
#>  SW Supply Data - portion of parcel acreage associated with surface water supply
#>  --------------------------------------------------------------------------------------------------
#>  WDID         :  Water district identifier for the ditch.
#>  #Ditch       :  Number of ditches that are associated with the parcel.
#>  SWFrac       :  1/#Ditch = fraction of ParcelArea (from above) that is irrigated by the ditch (0.0 to 1.0).
#>  SWFracHB     :  SWFrac from HydroBase, should match SWFrac.
#>  SWIrrigArea  :  ParcelArea * %Irrig = area irrigated by surface water supply for this ditch.
#>  HBError      :  Indicates whether the SWFrac computed from data is different than SWFracHB from HydroBase
#>                   ERROR - indicates that not all supplies in HydroBase parcel data are being modeled
#>                           due to different number of ditches associated with the parcel.
#>                           Checks are made to precision of 1 digit.
#>                           The CheckParcels() command can be used to check to a specified precision.
#>                           These errors need to be fixed to ensure the integrity of the dataset.
#>                   Blank indicates that model dataset and HydroBase data agree.
#>
#>  GW Supply Data - portion of parcel acreage associated with groundwater supply
#>  --------------------------------------------------------------------------------------------------
#>  IdType       :  Water supply part ID type (WDID or RECEIPT).
#>  WDID         :  WDID for supply well.
#>  RECEIPT      :  Well permit receipt.
#>  #Wells       :  Number of wells that are associated with ParcelId.
#>  GWFrac       :  1/#Wells = fraction of ParcelArea (from above) that is irrigated by the ditch (0.0 to 1.0).
#>                    - not in original data (calculated when loaded into HydroBase).
#>  GWIrrigArea  :  ParcelArea/#Wells, zero if area is already assigned to surface water ID for D&W node.
#>
#>----------------------------------- Parcel Data ------------------------------|-------------------- SW Suppply ---------------------|----------------------- GW Supply Data ---------------------|
#>                                                                      Irrig   |                                                     |                                                            |
#>Year  Div Dist   ParcelId              Crop         ParcelArea Units  Method  |    WDID   #Ditch SWFrac SWFracHB SWIrrigArea HBError|  ID Type     WDID       Receipt   #Wells GWFrac GWIrrigArea|
#>b--exb--exb--exb-------------exb------------------exb--------exb--exb--------exb--------exb----exb----exb------exb---------exb-----exb--------exb--------exb----------exb----exb----exb---------ex
#>EndHeader
#>
  1954    2   10        21010947 GRASS_PASTURE            64.634 acre FLOOD     
                                                                                 1000736         1  1.000    1.000      64.634        
  1954    2   10        21010948 GRASS_PASTURE             5.162 acre FLOOD     
                                                                                 1000567         1  1.000    1.000       5.162        
                                                                                                                                                  1005401    9079999           4  0.250       1.290
                                                                                                                                                  1005402    9080000           4  0.250       1.290
                                                                                                                                                  1005403    9080001           4  0.250       1.290
                                                                                                                                                  1005628    9080514           4  0.250       1.290
  2015    2   67        26723268 ALFALFA                  16.738 acre FLOOD     
                                                                                                                                       Receipt               0076564           1  1.000      16.738
  2015    2   67        26723269 GRASS_PASTURE             0.900 acre FLOOD     
                                                                                                                                       Receipt               9080470           1  1.000       0.900
  2015    2   67        26723672 WHEAT_FALL                6.015 acre FLOOD     
                                                                                                                                       WDID       6706324                      1  1.000       6.015
```

### Model Parcel Supply Format ###

The following is an example of the `ModelParcelSupply` report format, which is organized from model perspective.
The CDS information is only complete after running the
[`ReadCropPatternTSFromParcels`](../ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md) command.

```
#> ***************************************************************************************************
#>  StateDMI Model / Parcel / Supply File - this is a diagnostics report
#>  - this report shows the relationships between a parcel and supplies for the parcel
#>  - the parcel data should match orginal GIS irrigated land and supply data
#>  - model data reflect model location identifiers and collections
#>  - the parcel/supply data can be used for *.cds, *.ipy, and *.wer files
#>
#>  Model ID - StateCU location and node type
#>  --------------------------------------------------------------------------------------------------
#>  LocId          :  CU Location ID surface water data
#>  LocType        :  Location type
#>                    - for StateMod, corresponds to network node type
#>                    - for StateCU, determined from supply for parcels
#>                    DIV - diversion
#>                    D&W - diversion & well
#>                    WEL - well
#>                    UNK - unknown, such as StateCU climate station dataset
#>  CollectionType :  Used if multiple data objects are combined under one model identifier
#>                    Single - single node (no collection)
#>                    Aggregate - aggregate physical properties (capacity, etc.) and water rights into classes
#>                    System - aggregate physical properties (capacity, etc.), maintain water rights
#>
#>  Parcel Data - GIS loaded into HydroBase
#>  --------------------------------------------------------------------------------------------------
#>  Year         :  Calendar year for parcel
#>  ParcelId     :  Parcel identifier
#>  Crop         :  Crop type for parcel (1 crop per parcel)
#>  ParcelArea   :  Parcel area for crop
#>  Units        :  Area units
#>  IrrigMeth    :  Irrigation method
#>
#>  Whether or not the row of data is included - need to expand this to indicate how included or not
#>  --------------------------------------------------------------------------------------------------
#>  In CDS:      :  Indicates whether the parcel is included in CDS file acreage.
#>                  This will only be set after running 'ReadCropPatternTSFromParcels' command.
#>                  CDS:YES = include parcel area in CDS file
#>                  - a parcel with surface water supply - area for parcel is always included
#>                  - a parcel with only groundwater supply
#>                  CDS:NO = do not include parcel area in CDS file
#>                  - if GW supply, only include parcel area if no surface water supply
#>                  CDS:ERR = error determining whether to include parcel area in CDS FILE (input error)
#>                  CDS:UNK = unknown whether to include parcel area in CDS FILE (should not happen)
#>                  - will have this value until crop pattern time series are processed
#>  DataSrc      :  Data source for the supply data
#>                  - typically from HydroBase but may enable user-supplied data
#>                  - may in the future be read directly from GIS or other files
#>                  HB-PUTS = HydroBase ParcelUseTS/Structure from vw_CDSS_ParcelUseTSStructureToParcel (diversions)
#>                  HB-WTP = HydroBase Well/Parcel from vw_CDSS_WellsWellToParcel (wells)
#>                  SET = data are provided with Set...() or Read...() command
#>  CDS LocId    :  The StateCU location (or StateMod) ID where the parcel area is counted for CDS file. 
#>                  - DIV or D&W identifier if surface water supply. 
#>                  - WEL if groundwater supply only. 
#>  CDS LocType  :  Type node type for CDS LocId, to help understand. 
#>
#>  SW Collection Data - surface water aggregate/system data
#>  --------------------------------------------------------------------------------------------------
#>  SWPartType   :  Surface water supply part type (only Ditch is allowed).
#>  SWPartIdType :  Surface water supply part ID type (only WDID is allowed).
#>
#>  SW Supply Data - portion of parcel acreage associated with surface water supply
#>  --------------------------------------------------------------------------------------------------
#>  #Ditch       :  Number of ditches that are associated with the parcel.
#>  Irrig Frac   :  1/#Ditch = fraction of ParcelArea (from above) that is irrigated by the ditch (0.0 to 1.0).
#>  Irrig FracHB :  SWFrac from HydroBase, should match SWFrac.
#>  SWIrrigArea  :  ParcelArea * %Irrig = area irrigated by surface water supply for this ditch.
#>  HBError      :  Indicates whether the SWFrac computed from data is different than SWFracHB from HydroBase
#>                   ERROR - indicates that not all supplies in HydroBase parcel data are being modeled
#>                           due to different number of ditches associated with the parcel.
#>                           Checks are made to precision of 1 digit.
#>                           The CheckParcels() command can be used to check to a specified precision.
#>                           These errors need to be fixed to ensure the integrity of the dataset.
#>                   Blank indicates that model dataset and HydroBase data agree.
#>
#>  GW Collection Data - groundwater aggregate/system data
#>  --------------------------------------------------------------------------------------------------
#>  GWPartType   :  Water supply part type (Well or Parcel, the latter being phased out).
#>                  WellInDitch = indicates a collection of ditches, with associated wells determined.
#>                                automatically based well -> parcel -> ditch relationship.
#>                  Well = indicates a collection of wells specified using well identifiers.
#>                  Parcel = indicates a collection of wells specified using parcel identifiers.
#>  GWPartIdType :  Water supply part ID type (WDID or RECEIPT).
#>                  If GWPartType=Well:
#>                     WDID - supply well has a WDID
#>                     RECEIPT - supply well has a well permit receipt for identifier.
#>                  If GWPartType=Parcel:
#>                     Parcel - parcel identifier, THIS APPROACH IS BEING PHASED OUT
#>  WDID         :  WDID for part if GWPartIdType=WDID.
#>  Receipt      :  Receipt for part if GWPartIdType=RECEIPT.
#>
#>  GW Supply Data - portion of parcel acreage associated with groundwater supply
#>  --------------------------------------------------------------------------------------------------
#>  #Wells       :  Number of wells that are associated with ParcelId.
#>  GWIrrigArea  :  ParcelArea/#Wells, zero if area is already assigned to surface water ID for D&W node.
#>
#>-------- Model Id ---------|-------------------------- Parcel Data ------------------------||-------- Data Source/Use --------- ||---- SW Collection Data ----|------------ SW Suppply Data -----------|------------- GW Collection Data ----------| GW Supply Data |
#>           Loc  Collection |       Parcel                          Parcel          Irrig   ||                    CDS        Loc ||  SWPart   SWPartId         |#     Irrig   Irrig    Irrig            |   GWPart      GWPart                      |#     GW        |
#>  LocId    Type Type       |Year   ID                Crop          Area     Units  Method  || CDS?     DataSrc   LocId      Type||  Type     Type       WDID  |Ditch Frac    FracHB   Area      HBError|    Type       IdType     WDID     Receipt |Well  IrrigArea |
#>b--------exb--exb---------exb--exb--------exb------------------exb--------exb--exb--------exb------exb--------exb----------exb--exb--------exb------exb------exb--exb------exb------exb--------eb-----exb----------exb--------exb------exb--------exb--exb---------ex
#>EndHeader
#>
1000504      DIV  Single      1975 21012133   GRASS_PASTURE            39.303 acre FLOOD     
                                                                                              CDS:YES  HB-PUTS    1000504      DIV  Ditch      WDID     1000504     1    1.000    1.000     39.303        
1000504      DIV  Single      1998 21012719   GRASS_PASTURE            26.166 acre FLOOD     
                                                                                              CDS:YES  HB-PUTS    1000504      DIV  Ditch      WDID     1000504     1    1.000    1.000     26.166        
1000504      DIV  Single      2015 21023167   GRASS_PASTURE            22.138 acre FLOOD     
                                                                                              CDS:YES  HB-PUTS    1000504      DIV  Ditch      WDID     1000504     1    1.000    1.000     22.138        
1000567      D&W  Single      1954 21010941   GRASS_PASTURE            55.117 acre FLOOD     
                                                                                              CDS:YES  HB-PUTS    1000567      D&W  Ditch      WDID     1000567     1    1.000    1.000     55.117        
                                                                                              CDS:NO   HB-WTP                                                                                             WellInDitch             1005638  9080344       2      27.558
                                                                                              CDS:NO   HB-WTP                                                                                             WellInDitch             1005639  9080345       2      27.558
1000567      D&W  Single      1954 21010942   GRASS_PASTURE            20.477 acre FLOOD     
                                                                                              CDS:YES  HB-PUTS    1000567      D&W  Ditch      WDID     1000567     1    1.000    1.000     20.477        
                                                                                              CDS:NO   HB-WTP                                                                                             WellInDitch             1005638  9080344       2      10.239
                                                                                              CDS:NO   HB-WTP                                                                                             WellInDitch             1005639  9080345       2      10.239
1000567      D&W  Single      1954 21010945   GRASS_PASTURE            16.372 acre FLOOD     
                                                                                              CDS:YES  HB-PUTS    1000567      D&W  Ditch      WDID     1000567     1    1.000    1.000     16.372        
                                                                                              CDS:NO   HB-WTP                                                                                             WellInDitch             1005628  9080514       2       8.186
                                                                                              CDS:NO   HB-WTP                                                                                             WellInDitch             1005630  9080348       2       8.186
```

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteParcelsToFile](WriteParcelsToFile.png)
</p>**

**<p style="text-align: center;">
`WriteParcelsToFile` Command Editor (<a href="../WriteParcelsToFile.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteParcelsToFile(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write. | None – must be specified. |
| `FileFormat` | Output file format:<ul><li>`ModelParcelSupply` - output file contains model location, parcel, and supply data</li><li>`ParcelSupply` - output file contains parcel and supply data</li></ul> | `ModelParcelSupply` |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteParcelsToFile).

## Troubleshooting ##

## See Also ##

* [`CheckParcels`](../CheckParcels/CheckParcels.md) command
* [`ReadParcelsFromHydroBase`](../ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) command
