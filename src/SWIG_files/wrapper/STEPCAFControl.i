/*
Copyright 2008-2017 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%define STEPCAFCONTROLDOCSTRING
"-Purpose : This package provides external access and control for STEP,
on the level of CAF (shapes with attributes, external
references etc.)
"
%enddef
%module (package="OCC.Core", docstring=STEPCAFCONTROLDOCSTRING) STEPCAFControl

#pragma SWIG nowarn=504,325,503

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include STEPCAFControl_headers.i

/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%wrap_handle(STEPCAFControl_ActorWrite)
%wrap_handle(STEPCAFControl_Controller)
%wrap_handle(STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile)
%wrap_handle(STEPCAFControl_DataMapNodeOfDataMapOfLabelShape)
%wrap_handle(STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile)
%wrap_handle(STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile)
%wrap_handle(STEPCAFControl_DataMapNodeOfDataMapOfShapePD)
%wrap_handle(STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR)
%wrap_handle(STEPCAFControl_DictionaryOfExternFile)
%wrap_handle(STEPCAFControl_ExternFile)
%wrap_handle(STEPCAFControl_StackItemOfDictionaryOfExternFile)

%nodefaultctor STEPCAFControl_ActorWrite;
class STEPCAFControl_ActorWrite : public STEPControl_ActorWrite {
	public:
		%feature("compactdefaultargs") STEPCAFControl_ActorWrite;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_ActorWrite;
		 STEPCAFControl_ActorWrite ();
		%feature("compactdefaultargs") IsAssembly;
		%feature("autodoc", "	* Check whether shape S is assembly Returns True if shape is registered in assemblies map

	:param S:
	:type S: TopoDS_Shape &
	:rtype: bool
") IsAssembly;
		virtual Standard_Boolean IsAssembly (TopoDS_Shape & S);
		%feature("compactdefaultargs") SetStdMode;
		%feature("autodoc", "	* Set standard mode of work In standard mode Actor (default) behaves exactly as its ancestor, also map is cleared

	:param stdmode: default value is Standard_True
	:type stdmode: bool
	:rtype: None
") SetStdMode;
		void SetStdMode (const Standard_Boolean stdmode = Standard_True);
		%feature("compactdefaultargs") ClearMap;
		%feature("autodoc", "	* Clears map of shapes registered as assemblies

	:rtype: None
") ClearMap;
		void ClearMap ();
		%feature("compactdefaultargs") RegisterAssembly;
		%feature("autodoc", "	* Registers shape to be written as assembly The shape should be TopoDS_Compound (else does nothing)

	:param S:
	:type S: TopoDS_Shape &
	:rtype: None
") RegisterAssembly;
		void RegisterAssembly (const TopoDS_Shape & S);
};


%make_alias(STEPCAFControl_ActorWrite)

%extend STEPCAFControl_ActorWrite {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_Controller;
class STEPCAFControl_Controller : public STEPControl_Controller {
	public:
		%feature("compactdefaultargs") STEPCAFControl_Controller;
		%feature("autodoc", "	* Initializes the use of STEP Norm (the first time)

	:rtype: None
") STEPCAFControl_Controller;
		 STEPCAFControl_Controller ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Standard Initialisation. It creates a Controller for STEP-XCAF and records it to various names, available to select it later Returns True when done, False if could not be done

	:rtype: bool
") Init;
		static Standard_Boolean Init ();
};


%make_alias(STEPCAFControl_Controller)

%extend STEPCAFControl_Controller {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile;
class STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile : public TCollection_BasicMapIterator {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile;
		 STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile ();
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfLabelExternFile &
	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile;
		 STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile (const STEPCAFControl_DataMapOfLabelExternFile & aMap);
		%feature("compactdefaultargs") Initialize;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfLabelExternFile &
	:rtype: None
") Initialize;
		void Initialize (const STEPCAFControl_DataMapOfLabelExternFile & aMap);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: TDF_Label
") Key;
		const TDF_Label & Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_ExternFile
") Value;
		Handle_STEPCAFControl_ExternFile Value ();
};


%extend STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape;
class STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape : public TCollection_BasicMapIterator {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape;
		 STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape ();
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfLabelShape &
	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape;
		 STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape (const STEPCAFControl_DataMapOfLabelShape & aMap);
		%feature("compactdefaultargs") Initialize;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfLabelShape &
	:rtype: None
") Initialize;
		void Initialize (const STEPCAFControl_DataMapOfLabelShape & aMap);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: TDF_Label
") Key;
		const TDF_Label & Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Value;
		const TopoDS_Shape  Value ();
};


%extend STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile;
class STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile : public TCollection_BasicMapIterator {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile;
		 STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile ();
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfPDExternFile &
	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile;
		 STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile (const STEPCAFControl_DataMapOfPDExternFile & aMap);
		%feature("compactdefaultargs") Initialize;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfPDExternFile &
	:rtype: None
") Initialize;
		void Initialize (const STEPCAFControl_DataMapOfPDExternFile & aMap);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: Handle_StepBasic_ProductDefinition
") Key;
		Handle_StepBasic_ProductDefinition Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_ExternFile
") Value;
		Handle_STEPCAFControl_ExternFile Value ();
};


%extend STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile;
class STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile : public TCollection_BasicMapIterator {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile;
		 STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile ();
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfSDRExternFile &
	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile;
		 STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile (const STEPCAFControl_DataMapOfSDRExternFile & aMap);
		%feature("compactdefaultargs") Initialize;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfSDRExternFile &
	:rtype: None
") Initialize;
		void Initialize (const STEPCAFControl_DataMapOfSDRExternFile & aMap);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: Handle_StepShape_ShapeDefinitionRepresentation
") Key;
		Handle_StepShape_ShapeDefinitionRepresentation Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_ExternFile
") Value;
		Handle_STEPCAFControl_ExternFile Value ();
};


%extend STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfShapePD;
class STEPCAFControl_DataMapIteratorOfDataMapOfShapePD : public TCollection_BasicMapIterator {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfShapePD;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfShapePD;
		 STEPCAFControl_DataMapIteratorOfDataMapOfShapePD ();
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfShapePD;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfShapePD &
	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfShapePD;
		 STEPCAFControl_DataMapIteratorOfDataMapOfShapePD (const STEPCAFControl_DataMapOfShapePD & aMap);
		%feature("compactdefaultargs") Initialize;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfShapePD &
	:rtype: None
") Initialize;
		void Initialize (const STEPCAFControl_DataMapOfShapePD & aMap);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Key;
		const TopoDS_Shape  Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_StepBasic_ProductDefinition
") Value;
		Handle_StepBasic_ProductDefinition Value ();
};


%extend STEPCAFControl_DataMapIteratorOfDataMapOfShapePD {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR;
class STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR : public TCollection_BasicMapIterator {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR;
		 STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR ();
		%feature("compactdefaultargs") STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfShapeSDR &
	:rtype: None
") STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR;
		 STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR (const STEPCAFControl_DataMapOfShapeSDR & aMap);
		%feature("compactdefaultargs") Initialize;
		%feature("autodoc", "	:param aMap:
	:type aMap: STEPCAFControl_DataMapOfShapeSDR &
	:rtype: None
") Initialize;
		void Initialize (const STEPCAFControl_DataMapOfShapeSDR & aMap);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Key;
		const TopoDS_Shape  Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_StepShape_ShapeDefinitionRepresentation
") Value;
		Handle_StepShape_ShapeDefinitionRepresentation Value ();
};


%extend STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile;
class STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile : public TCollection_MapNode {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:param I:
	:type I: Handle_STEPCAFControl_ExternFile &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile;
		 STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile (const TDF_Label & K,const Handle_STEPCAFControl_ExternFile & I,const TCollection_MapNodePtr & n);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: TDF_Label
") Key;
		TDF_Label & Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_ExternFile
") Value;
		Handle_STEPCAFControl_ExternFile Value ();
};


%make_alias(STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile)

%extend STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfLabelShape;
class STEPCAFControl_DataMapNodeOfDataMapOfLabelShape : public TCollection_MapNode {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapNodeOfDataMapOfLabelShape;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:param I:
	:type I: TopoDS_Shape &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") STEPCAFControl_DataMapNodeOfDataMapOfLabelShape;
		 STEPCAFControl_DataMapNodeOfDataMapOfLabelShape (const TDF_Label & K,const TopoDS_Shape & I,const TCollection_MapNodePtr & n);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: TDF_Label
") Key;
		TDF_Label & Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Value;
		TopoDS_Shape  Value ();
};


%make_alias(STEPCAFControl_DataMapNodeOfDataMapOfLabelShape)

%extend STEPCAFControl_DataMapNodeOfDataMapOfLabelShape {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile;
class STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile : public TCollection_MapNode {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepBasic_ProductDefinition &
	:param I:
	:type I: Handle_STEPCAFControl_ExternFile &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile;
		 STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile (const Handle_StepBasic_ProductDefinition & K,const Handle_STEPCAFControl_ExternFile & I,const TCollection_MapNodePtr & n);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: Handle_StepBasic_ProductDefinition
") Key;
		Handle_StepBasic_ProductDefinition Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_ExternFile
") Value;
		Handle_STEPCAFControl_ExternFile Value ();
};


%make_alias(STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile)

%extend STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile;
class STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile : public TCollection_MapNode {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepShape_ShapeDefinitionRepresentation &
	:param I:
	:type I: Handle_STEPCAFControl_ExternFile &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile;
		 STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile (const Handle_StepShape_ShapeDefinitionRepresentation & K,const Handle_STEPCAFControl_ExternFile & I,const TCollection_MapNodePtr & n);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: Handle_StepShape_ShapeDefinitionRepresentation
") Key;
		Handle_StepShape_ShapeDefinitionRepresentation Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_ExternFile
") Value;
		Handle_STEPCAFControl_ExternFile Value ();
};


%make_alias(STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile)

%extend STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfShapePD;
class STEPCAFControl_DataMapNodeOfDataMapOfShapePD : public TCollection_MapNode {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapNodeOfDataMapOfShapePD;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:param I:
	:type I: Handle_StepBasic_ProductDefinition &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") STEPCAFControl_DataMapNodeOfDataMapOfShapePD;
		 STEPCAFControl_DataMapNodeOfDataMapOfShapePD (const TopoDS_Shape & K,const Handle_StepBasic_ProductDefinition & I,const TCollection_MapNodePtr & n);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Key;
		TopoDS_Shape  Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_StepBasic_ProductDefinition
") Value;
		Handle_StepBasic_ProductDefinition Value ();
};


%make_alias(STEPCAFControl_DataMapNodeOfDataMapOfShapePD)

%extend STEPCAFControl_DataMapNodeOfDataMapOfShapePD {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR;
class STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR : public TCollection_MapNode {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:param I:
	:type I: Handle_StepShape_ShapeDefinitionRepresentation &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR;
		 STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR (const TopoDS_Shape & K,const Handle_StepShape_ShapeDefinitionRepresentation & I,const TCollection_MapNodePtr & n);
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Key;
		TopoDS_Shape  Key ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_StepShape_ShapeDefinitionRepresentation
") Value;
		Handle_StepShape_ShapeDefinitionRepresentation Value ();
};


%make_alias(STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR)

%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapOfLabelExternFile;
class STEPCAFControl_DataMapOfLabelExternFile : public TCollection_BasicMap {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapOfLabelExternFile;
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: int
	:rtype: None
") STEPCAFControl_DataMapOfLabelExternFile;
		 STEPCAFControl_DataMapOfLabelExternFile (const Standard_Integer NbBuckets = 1);
		%feature("compactdefaultargs") Assign;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfLabelExternFile &
	:rtype: STEPCAFControl_DataMapOfLabelExternFile
") Assign;
		STEPCAFControl_DataMapOfLabelExternFile & Assign (const STEPCAFControl_DataMapOfLabelExternFile & Other);
		%feature("compactdefaultargs") operator =;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfLabelExternFile &
	:rtype: STEPCAFControl_DataMapOfLabelExternFile
") operator =;
		STEPCAFControl_DataMapOfLabelExternFile & operator = (const STEPCAFControl_DataMapOfLabelExternFile & Other);
		%feature("compactdefaultargs") ReSize;
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: int
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Bind;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:param I:
	:type I: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const TDF_Label & K,const Handle_STEPCAFControl_ExternFile & I);
		%feature("compactdefaultargs") IsBound;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const TDF_Label & K);
		%feature("compactdefaultargs") UnBind;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const TDF_Label & K);
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: Handle_STEPCAFControl_ExternFile
") Find;
		Handle_STEPCAFControl_ExternFile Find (const TDF_Label & K);
		%feature("compactdefaultargs") ChangeFind;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: Handle_STEPCAFControl_ExternFile
") ChangeFind;
		Handle_STEPCAFControl_ExternFile ChangeFind (const TDF_Label & K);
		%feature("compactdefaultargs") Find1;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const TDF_Label & K);
		%feature("compactdefaultargs") ChangeFind1;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const TDF_Label & K);
};


%extend STEPCAFControl_DataMapOfLabelExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapOfLabelShape;
class STEPCAFControl_DataMapOfLabelShape : public TCollection_BasicMap {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapOfLabelShape;
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: int
	:rtype: None
") STEPCAFControl_DataMapOfLabelShape;
		 STEPCAFControl_DataMapOfLabelShape (const Standard_Integer NbBuckets = 1);
		%feature("compactdefaultargs") Assign;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfLabelShape &
	:rtype: STEPCAFControl_DataMapOfLabelShape
") Assign;
		STEPCAFControl_DataMapOfLabelShape & Assign (const STEPCAFControl_DataMapOfLabelShape & Other);
		%feature("compactdefaultargs") operator =;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfLabelShape &
	:rtype: STEPCAFControl_DataMapOfLabelShape
") operator =;
		STEPCAFControl_DataMapOfLabelShape & operator = (const STEPCAFControl_DataMapOfLabelShape & Other);
		%feature("compactdefaultargs") ReSize;
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: int
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Bind;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:param I:
	:type I: TopoDS_Shape &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const TDF_Label & K,const TopoDS_Shape & I);
		%feature("compactdefaultargs") IsBound;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const TDF_Label & K);
		%feature("compactdefaultargs") UnBind;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const TDF_Label & K);
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: TopoDS_Shape
") Find;
		const TopoDS_Shape  Find (const TDF_Label & K);
		%feature("compactdefaultargs") ChangeFind;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: TopoDS_Shape
") ChangeFind;
		TopoDS_Shape  ChangeFind (const TDF_Label & K);
		%feature("compactdefaultargs") Find1;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const TDF_Label & K);
		%feature("compactdefaultargs") ChangeFind1;
		%feature("autodoc", "	:param K:
	:type K: TDF_Label &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const TDF_Label & K);
};


%extend STEPCAFControl_DataMapOfLabelShape {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapOfPDExternFile;
class STEPCAFControl_DataMapOfPDExternFile : public TCollection_BasicMap {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapOfPDExternFile;
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: int
	:rtype: None
") STEPCAFControl_DataMapOfPDExternFile;
		 STEPCAFControl_DataMapOfPDExternFile (const Standard_Integer NbBuckets = 1);
		%feature("compactdefaultargs") Assign;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfPDExternFile &
	:rtype: STEPCAFControl_DataMapOfPDExternFile
") Assign;
		STEPCAFControl_DataMapOfPDExternFile & Assign (const STEPCAFControl_DataMapOfPDExternFile & Other);
		%feature("compactdefaultargs") operator =;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfPDExternFile &
	:rtype: STEPCAFControl_DataMapOfPDExternFile
") operator =;
		STEPCAFControl_DataMapOfPDExternFile & operator = (const STEPCAFControl_DataMapOfPDExternFile & Other);
		%feature("compactdefaultargs") ReSize;
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: int
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Bind;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepBasic_ProductDefinition &
	:param I:
	:type I: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const Handle_StepBasic_ProductDefinition & K,const Handle_STEPCAFControl_ExternFile & I);
		%feature("compactdefaultargs") IsBound;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepBasic_ProductDefinition &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const Handle_StepBasic_ProductDefinition & K);
		%feature("compactdefaultargs") UnBind;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepBasic_ProductDefinition &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const Handle_StepBasic_ProductDefinition & K);
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepBasic_ProductDefinition &
	:rtype: Handle_STEPCAFControl_ExternFile
") Find;
		Handle_STEPCAFControl_ExternFile Find (const Handle_StepBasic_ProductDefinition & K);
		%feature("compactdefaultargs") ChangeFind;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepBasic_ProductDefinition &
	:rtype: Handle_STEPCAFControl_ExternFile
") ChangeFind;
		Handle_STEPCAFControl_ExternFile ChangeFind (const Handle_StepBasic_ProductDefinition & K);
		%feature("compactdefaultargs") Find1;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepBasic_ProductDefinition &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const Handle_StepBasic_ProductDefinition & K);
		%feature("compactdefaultargs") ChangeFind1;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepBasic_ProductDefinition &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const Handle_StepBasic_ProductDefinition & K);
};


%extend STEPCAFControl_DataMapOfPDExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapOfSDRExternFile;
class STEPCAFControl_DataMapOfSDRExternFile : public TCollection_BasicMap {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapOfSDRExternFile;
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: int
	:rtype: None
") STEPCAFControl_DataMapOfSDRExternFile;
		 STEPCAFControl_DataMapOfSDRExternFile (const Standard_Integer NbBuckets = 1);
		%feature("compactdefaultargs") Assign;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfSDRExternFile &
	:rtype: STEPCAFControl_DataMapOfSDRExternFile
") Assign;
		STEPCAFControl_DataMapOfSDRExternFile & Assign (const STEPCAFControl_DataMapOfSDRExternFile & Other);
		%feature("compactdefaultargs") operator =;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfSDRExternFile &
	:rtype: STEPCAFControl_DataMapOfSDRExternFile
") operator =;
		STEPCAFControl_DataMapOfSDRExternFile & operator = (const STEPCAFControl_DataMapOfSDRExternFile & Other);
		%feature("compactdefaultargs") ReSize;
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: int
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Bind;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepShape_ShapeDefinitionRepresentation &
	:param I:
	:type I: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const Handle_StepShape_ShapeDefinitionRepresentation & K,const Handle_STEPCAFControl_ExternFile & I);
		%feature("compactdefaultargs") IsBound;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepShape_ShapeDefinitionRepresentation &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const Handle_StepShape_ShapeDefinitionRepresentation & K);
		%feature("compactdefaultargs") UnBind;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepShape_ShapeDefinitionRepresentation &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const Handle_StepShape_ShapeDefinitionRepresentation & K);
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepShape_ShapeDefinitionRepresentation &
	:rtype: Handle_STEPCAFControl_ExternFile
") Find;
		Handle_STEPCAFControl_ExternFile Find (const Handle_StepShape_ShapeDefinitionRepresentation & K);
		%feature("compactdefaultargs") ChangeFind;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepShape_ShapeDefinitionRepresentation &
	:rtype: Handle_STEPCAFControl_ExternFile
") ChangeFind;
		Handle_STEPCAFControl_ExternFile ChangeFind (const Handle_StepShape_ShapeDefinitionRepresentation & K);
		%feature("compactdefaultargs") Find1;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepShape_ShapeDefinitionRepresentation &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const Handle_StepShape_ShapeDefinitionRepresentation & K);
		%feature("compactdefaultargs") ChangeFind1;
		%feature("autodoc", "	:param K:
	:type K: Handle_StepShape_ShapeDefinitionRepresentation &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const Handle_StepShape_ShapeDefinitionRepresentation & K);
};


%extend STEPCAFControl_DataMapOfSDRExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapOfShapePD;
class STEPCAFControl_DataMapOfShapePD : public TCollection_BasicMap {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapOfShapePD;
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: int
	:rtype: None
") STEPCAFControl_DataMapOfShapePD;
		 STEPCAFControl_DataMapOfShapePD (const Standard_Integer NbBuckets = 1);
		%feature("compactdefaultargs") Assign;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfShapePD &
	:rtype: STEPCAFControl_DataMapOfShapePD
") Assign;
		STEPCAFControl_DataMapOfShapePD & Assign (const STEPCAFControl_DataMapOfShapePD & Other);
		%feature("compactdefaultargs") operator =;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfShapePD &
	:rtype: STEPCAFControl_DataMapOfShapePD
") operator =;
		STEPCAFControl_DataMapOfShapePD & operator = (const STEPCAFControl_DataMapOfShapePD & Other);
		%feature("compactdefaultargs") ReSize;
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: int
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Bind;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:param I:
	:type I: Handle_StepBasic_ProductDefinition &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const TopoDS_Shape & K,const Handle_StepBasic_ProductDefinition & I);
		%feature("compactdefaultargs") IsBound;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const TopoDS_Shape & K);
		%feature("compactdefaultargs") UnBind;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const TopoDS_Shape & K);
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Handle_StepBasic_ProductDefinition
") Find;
		Handle_StepBasic_ProductDefinition Find (const TopoDS_Shape & K);
		%feature("compactdefaultargs") ChangeFind;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Handle_StepBasic_ProductDefinition
") ChangeFind;
		Handle_StepBasic_ProductDefinition ChangeFind (const TopoDS_Shape & K);
		%feature("compactdefaultargs") Find1;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const TopoDS_Shape & K);
		%feature("compactdefaultargs") ChangeFind1;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const TopoDS_Shape & K);
};


%extend STEPCAFControl_DataMapOfShapePD {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DataMapOfShapeSDR;
class STEPCAFControl_DataMapOfShapeSDR : public TCollection_BasicMap {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DataMapOfShapeSDR;
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: int
	:rtype: None
") STEPCAFControl_DataMapOfShapeSDR;
		 STEPCAFControl_DataMapOfShapeSDR (const Standard_Integer NbBuckets = 1);
		%feature("compactdefaultargs") Assign;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfShapeSDR &
	:rtype: STEPCAFControl_DataMapOfShapeSDR
") Assign;
		STEPCAFControl_DataMapOfShapeSDR & Assign (const STEPCAFControl_DataMapOfShapeSDR & Other);
		%feature("compactdefaultargs") operator =;
		%feature("autodoc", "	:param Other:
	:type Other: STEPCAFControl_DataMapOfShapeSDR &
	:rtype: STEPCAFControl_DataMapOfShapeSDR
") operator =;
		STEPCAFControl_DataMapOfShapeSDR & operator = (const STEPCAFControl_DataMapOfShapeSDR & Other);
		%feature("compactdefaultargs") ReSize;
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: int
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Bind;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:param I:
	:type I: Handle_StepShape_ShapeDefinitionRepresentation &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const TopoDS_Shape & K,const Handle_StepShape_ShapeDefinitionRepresentation & I);
		%feature("compactdefaultargs") IsBound;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const TopoDS_Shape & K);
		%feature("compactdefaultargs") UnBind;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const TopoDS_Shape & K);
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Handle_StepShape_ShapeDefinitionRepresentation
") Find;
		Handle_StepShape_ShapeDefinitionRepresentation Find (const TopoDS_Shape & K);
		%feature("compactdefaultargs") ChangeFind;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Handle_StepShape_ShapeDefinitionRepresentation
") ChangeFind;
		Handle_StepShape_ShapeDefinitionRepresentation ChangeFind (const TopoDS_Shape & K);
		%feature("compactdefaultargs") Find1;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const TopoDS_Shape & K);
		%feature("compactdefaultargs") ChangeFind1;
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const TopoDS_Shape & K);
};


%extend STEPCAFControl_DataMapOfShapeSDR {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_DictionaryOfExternFile;
class STEPCAFControl_DictionaryOfExternFile : public MMgt_TShared {
	public:
		%feature("compactdefaultargs") STEPCAFControl_DictionaryOfExternFile;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_DictionaryOfExternFile;
		 STEPCAFControl_DictionaryOfExternFile ();
		%feature("compactdefaultargs") HasItem;
		%feature("autodoc", "	:param name:
	:type name: char *
	:param exact: default value is Standard_False
	:type exact: bool
	:rtype: bool
") HasItem;
		Standard_Boolean HasItem (const char * name,const Standard_Boolean exact = Standard_False);
		%feature("compactdefaultargs") HasItem;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: bool
") HasItem;
		Standard_Boolean HasItem (const TCollection_AsciiString & name,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") Item;
		%feature("autodoc", "	:param name:
	:type name: char *
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: Handle_STEPCAFControl_ExternFile
") Item;
		Handle_STEPCAFControl_ExternFile Item (const char * name,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") Item;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: Handle_STEPCAFControl_ExternFile
") Item;
		Handle_STEPCAFControl_ExternFile Item (const TCollection_AsciiString & name,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "	:param name:
	:type name: char *
	:param anitem:
	:type anitem: Handle_STEPCAFControl_ExternFile &
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: bool
") GetItem;
		Standard_Boolean GetItem (const char * name,Handle_STEPCAFControl_ExternFile & anitem,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:param anitem:
	:type anitem: Handle_STEPCAFControl_ExternFile &
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: bool
") GetItem;
		Standard_Boolean GetItem (const TCollection_AsciiString & name,Handle_STEPCAFControl_ExternFile & anitem,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param name:
	:type name: char *
	:param anitem:
	:type anitem: Handle_STEPCAFControl_ExternFile &
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: None
") SetItem;
		void SetItem (const char * name,const Handle_STEPCAFControl_ExternFile & anitem,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:param anitem:
	:type anitem: Handle_STEPCAFControl_ExternFile &
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: None
") SetItem;
		void SetItem (const TCollection_AsciiString & name,const Handle_STEPCAFControl_ExternFile & anitem,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") NewItem;
		%feature("autodoc", "	:param name:
	:type name: char *
	:param isvalued:
	:type isvalued: bool
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: Handle_STEPCAFControl_ExternFile
") NewItem;
		Handle_STEPCAFControl_ExternFile NewItem (const char * name,Standard_Boolean &OutValue,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") NewItem;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:param isvalued:
	:type isvalued: bool
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: Handle_STEPCAFControl_ExternFile
") NewItem;
		Handle_STEPCAFControl_ExternFile NewItem (const TCollection_AsciiString & name,Standard_Boolean &OutValue,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") RemoveItem;
		%feature("autodoc", "	:param name:
	:type name: char *
	:param cln: default value is Standard_True
	:type cln: bool
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: bool
") RemoveItem;
		Standard_Boolean RemoveItem (const char * name,const Standard_Boolean cln = Standard_True,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") RemoveItem;
		%feature("autodoc", "	:param name:
	:type name: TCollection_AsciiString &
	:param cln: default value is Standard_True
	:type cln: bool
	:param exact: default value is Standard_True
	:type exact: bool
	:rtype: bool
") RemoveItem;
		Standard_Boolean RemoveItem (const TCollection_AsciiString & name,const Standard_Boolean cln = Standard_True,const Standard_Boolean exact = Standard_True);
		%feature("compactdefaultargs") Clean;
		%feature("autodoc", "	:rtype: None
") Clean;
		void Clean ();
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Copy;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_DictionaryOfExternFile
") Copy;
		Handle_STEPCAFControl_DictionaryOfExternFile Copy ();
		%feature("compactdefaultargs") Complete;
		%feature("autodoc", "	:param acell:
	:type acell: Handle_STEPCAFControl_DictionaryOfExternFile &
	:rtype: bool
") Complete;
		Standard_Boolean Complete (Handle_STEPCAFControl_DictionaryOfExternFile & acell);
};


%make_alias(STEPCAFControl_DictionaryOfExternFile)

%extend STEPCAFControl_DictionaryOfExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_ExternFile;
class STEPCAFControl_ExternFile : public MMgt_TShared {
	public:
		%feature("compactdefaultargs") STEPCAFControl_ExternFile;
		%feature("autodoc", "	* Creates an empty structure

	:rtype: None
") STEPCAFControl_ExternFile;
		 STEPCAFControl_ExternFile ();
		%feature("compactdefaultargs") SetWS;
		%feature("autodoc", "	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:rtype: None
") SetWS;
		void SetWS (const Handle_XSControl_WorkSession & WS);
		%feature("compactdefaultargs") GetWS;
		%feature("autodoc", "	:rtype: Handle_XSControl_WorkSession
") GetWS;
		Handle_XSControl_WorkSession GetWS ();
		%feature("compactdefaultargs") SetLoadStatus;
		%feature("autodoc", "	:param stat:
	:type stat: IFSelect_ReturnStatus
	:rtype: None
") SetLoadStatus;
		void SetLoadStatus (const IFSelect_ReturnStatus stat);
		%feature("compactdefaultargs") GetLoadStatus;
		%feature("autodoc", "	:rtype: IFSelect_ReturnStatus
") GetLoadStatus;
		IFSelect_ReturnStatus GetLoadStatus ();
		%feature("compactdefaultargs") SetTransferStatus;
		%feature("autodoc", "	:param isok:
	:type isok: bool
	:rtype: None
") SetTransferStatus;
		void SetTransferStatus (const Standard_Boolean isok);
		%feature("compactdefaultargs") GetTransferStatus;
		%feature("autodoc", "	:rtype: bool
") GetTransferStatus;
		Standard_Boolean GetTransferStatus ();
		%feature("compactdefaultargs") SetWriteStatus;
		%feature("autodoc", "	:param stat:
	:type stat: IFSelect_ReturnStatus
	:rtype: None
") SetWriteStatus;
		void SetWriteStatus (const IFSelect_ReturnStatus stat);
		%feature("compactdefaultargs") GetWriteStatus;
		%feature("autodoc", "	:rtype: IFSelect_ReturnStatus
") GetWriteStatus;
		IFSelect_ReturnStatus GetWriteStatus ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param name:
	:type name: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & name);
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetName;
		Handle_TCollection_HAsciiString GetName ();
		%feature("compactdefaultargs") SetLabel;
		%feature("autodoc", "	:param L:
	:type L: TDF_Label &
	:rtype: None
") SetLabel;
		void SetLabel (const TDF_Label & L);
		%feature("compactdefaultargs") GetLabel;
		%feature("autodoc", "	:rtype: TDF_Label
") GetLabel;
		TDF_Label GetLabel ();
};


%make_alias(STEPCAFControl_ExternFile)

%extend STEPCAFControl_ExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_IteratorOfDictionaryOfExternFile;
class STEPCAFControl_IteratorOfDictionaryOfExternFile {
	public:
		%feature("compactdefaultargs") STEPCAFControl_IteratorOfDictionaryOfExternFile;
		%feature("autodoc", "	:param acell:
	:type acell: Handle_STEPCAFControl_DictionaryOfExternFile &
	:rtype: None
") STEPCAFControl_IteratorOfDictionaryOfExternFile;
		 STEPCAFControl_IteratorOfDictionaryOfExternFile (const Handle_STEPCAFControl_DictionaryOfExternFile & acell);
		%feature("compactdefaultargs") STEPCAFControl_IteratorOfDictionaryOfExternFile;
		%feature("autodoc", "	:param acell:
	:type acell: Handle_STEPCAFControl_DictionaryOfExternFile &
	:param basename:
	:type basename: char *
	:rtype: None
") STEPCAFControl_IteratorOfDictionaryOfExternFile;
		 STEPCAFControl_IteratorOfDictionaryOfExternFile (const Handle_STEPCAFControl_DictionaryOfExternFile & acell,const char * basename);
		%feature("compactdefaultargs") STEPCAFControl_IteratorOfDictionaryOfExternFile;
		%feature("autodoc", "	:param acell:
	:type acell: Handle_STEPCAFControl_DictionaryOfExternFile &
	:param basename:
	:type basename: TCollection_AsciiString &
	:rtype: None
") STEPCAFControl_IteratorOfDictionaryOfExternFile;
		 STEPCAFControl_IteratorOfDictionaryOfExternFile (const Handle_STEPCAFControl_DictionaryOfExternFile & acell,const TCollection_AsciiString & basename);
		%feature("compactdefaultargs") Start;
		%feature("autodoc", "	:rtype: None
") Start;
		void Start ();
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_ExternFile
") Value;
		Handle_STEPCAFControl_ExternFile Value ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: TCollection_AsciiString
") Name;
		TCollection_AsciiString Name ();
};


%extend STEPCAFControl_IteratorOfDictionaryOfExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_Reader;
class STEPCAFControl_Reader {
	public:
		%feature("compactdefaultargs") STEPCAFControl_Reader;
		%feature("autodoc", "	* Creates a reader with an empty STEP model and sets ColorMode, LayerMode, NameMode and PropsMode to Standard_True.

	:rtype: None
") STEPCAFControl_Reader;
		 STEPCAFControl_Reader ();
		%feature("compactdefaultargs") STEPCAFControl_Reader;
		%feature("autodoc", "	* Creates a reader tool and attaches it to an already existing Session Clears the session if it was not yet set for STEP

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") STEPCAFControl_Reader;
		 STEPCAFControl_Reader (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Clears the internal data structures and attaches to a new session Clears the session if it was not yet set for STEP

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") Init;
		void Init (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") ReadFile;
		%feature("autodoc", "	* Loads a file and returns the read status Provided for use like single-file reader

	:param filename:
	:type filename: char *
	:rtype: IFSelect_ReturnStatus
") ReadFile;
		IFSelect_ReturnStatus ReadFile (const char * filename);
		%feature("compactdefaultargs") NbRootsForTransfer;
		%feature("autodoc", "	* Returns number of roots recognized for transfer Shortcut for Reader().NbRootsForTransfer()

	:rtype: int
") NbRootsForTransfer;
		Standard_Integer NbRootsForTransfer ();
		%feature("compactdefaultargs") TransferOneRoot;
		%feature("autodoc", "	* Translates currently loaded STEP file into the document Returns True if succeeded, and False in case of fail Provided for use like single-file reader

	:param num:
	:type num: int
	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") TransferOneRoot;
		Standard_Boolean TransferOneRoot (const Standard_Integer num,Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Translates currently loaded STEP file into the document Returns True if succeeded, and False in case of fail Provided for use like single-file reader

	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param filename:
	:type filename: TCollection_AsciiString &
	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const TCollection_AsciiString & filename,Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Translate STEP file given by filename into the document Return True if succeeded, and False in case of fail

	:param filename:
	:type filename: char *
	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const char * filename,Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") ExternFiles;
		%feature("autodoc", "	* Returns data on external files Returns Null handle if no external files are read

	:rtype: Handle_STEPCAFControl_DictionaryOfExternFile
") ExternFiles;
		Handle_STEPCAFControl_DictionaryOfExternFile ExternFiles ();
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "	* Returns data on external file by its name Returns False if no external file with given name is read

	:param name:
	:type name: char *
	:param ef:
	:type ef: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") ExternFile;
		Standard_Boolean ExternFile (const char * name,Handle_STEPCAFControl_ExternFile & ef);
		%feature("compactdefaultargs") ChangeReader;
		%feature("autodoc", "	* Returns basic reader

	:rtype: STEPControl_Reader
") ChangeReader;
		STEPControl_Reader & ChangeReader ();
		%feature("compactdefaultargs") Reader;
		%feature("autodoc", "	* Returns basic reader as const

	:rtype: STEPControl_Reader
") Reader;
		const STEPControl_Reader & Reader ();
		%feature("compactdefaultargs") FindInstance;
		%feature("autodoc", "	* Returns label of instance of an assembly component corresponding to a given NAUO

	:param NAUO:
	:type NAUO: Handle_StepRepr_NextAssemblyUsageOccurrence &
	:param STool:
	:type STool: Handle_XCAFDoc_ShapeTool &
	:param Tool:
	:type Tool: STEPConstruct_Tool &
	:param PDRFileMap:
	:type PDRFileMap: STEPCAFControl_DataMapOfPDExternFile &
	:param ShapeLabelMap:
	:type ShapeLabelMap: XCAFDoc_DataMapOfShapeLabel &
	:rtype: TDF_Label
") FindInstance;
		static TDF_Label FindInstance (const Handle_StepRepr_NextAssemblyUsageOccurrence & NAUO,const Handle_XCAFDoc_ShapeTool & STool,const STEPConstruct_Tool & Tool,const STEPCAFControl_DataMapOfPDExternFile & PDRFileMap,const XCAFDoc_DataMapOfShapeLabel & ShapeLabelMap);
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "	* Set ColorMode for indicate read Colors or not.

	:param colormode:
	:type colormode: bool
	:rtype: None
") SetColorMode;
		void SetColorMode (const Standard_Boolean colormode);
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "	:rtype: bool
") GetColorMode;
		Standard_Boolean GetColorMode ();
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "	* Set NameMode for indicate read Name or not.

	:param namemode:
	:type namemode: bool
	:rtype: None
") SetNameMode;
		void SetNameMode (const Standard_Boolean namemode);
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "	:rtype: bool
") GetNameMode;
		Standard_Boolean GetNameMode ();
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "	* Set LayerMode for indicate read Layers or not.

	:param layermode:
	:type layermode: bool
	:rtype: None
") SetLayerMode;
		void SetLayerMode (const Standard_Boolean layermode);
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "	:rtype: bool
") GetLayerMode;
		Standard_Boolean GetLayerMode ();
		%feature("compactdefaultargs") SetPropsMode;
		%feature("autodoc", "	* PropsMode for indicate read Validation properties or not.

	:param propsmode:
	:type propsmode: bool
	:rtype: None
") SetPropsMode;
		void SetPropsMode (const Standard_Boolean propsmode);
		%feature("compactdefaultargs") GetPropsMode;
		%feature("autodoc", "	:rtype: bool
") GetPropsMode;
		Standard_Boolean GetPropsMode ();
		%feature("compactdefaultargs") SetSHUOMode;
		%feature("autodoc", "	* Set SHUO mode for indicate write SHUO or not.

	:param shuomode:
	:type shuomode: bool
	:rtype: None
") SetSHUOMode;
		void SetSHUOMode (const Standard_Boolean shuomode);
		%feature("compactdefaultargs") GetSHUOMode;
		%feature("autodoc", "	:rtype: bool
") GetSHUOMode;
		Standard_Boolean GetSHUOMode ();
		%feature("compactdefaultargs") SetGDTMode;
		%feature("autodoc", "	* Set GDT mode for indicate write GDT or not.

	:param gdtmode:
	:type gdtmode: bool
	:rtype: None
") SetGDTMode;
		void SetGDTMode (const Standard_Boolean gdtmode);
		%feature("compactdefaultargs") GetGDTMode;
		%feature("autodoc", "	:rtype: bool
") GetGDTMode;
		Standard_Boolean GetGDTMode ();
		%feature("compactdefaultargs") SetMatMode;
		%feature("autodoc", "	* Set Material mode

	:param matmode:
	:type matmode: bool
	:rtype: None
") SetMatMode;
		void SetMatMode (const Standard_Boolean matmode);
		%feature("compactdefaultargs") GetMatMode;
		%feature("autodoc", "	:rtype: bool
") GetMatMode;
		Standard_Boolean GetMatMode ();
};


%extend STEPCAFControl_Reader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_StackItemOfDictionaryOfExternFile;
class STEPCAFControl_StackItemOfDictionaryOfExternFile : public MMgt_TShared {
	public:
		%feature("compactdefaultargs") STEPCAFControl_StackItemOfDictionaryOfExternFile;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_StackItemOfDictionaryOfExternFile;
		 STEPCAFControl_StackItemOfDictionaryOfExternFile ();
		%feature("compactdefaultargs") STEPCAFControl_StackItemOfDictionaryOfExternFile;
		%feature("autodoc", "	:param previous:
	:type previous: Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile &
	:rtype: None
") STEPCAFControl_StackItemOfDictionaryOfExternFile;
		 STEPCAFControl_StackItemOfDictionaryOfExternFile (const Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile & previous);
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile
") Previous;
		Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile Previous ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: Handle_STEPCAFControl_DictionaryOfExternFile
") Value;
		Handle_STEPCAFControl_DictionaryOfExternFile Value ();
		%feature("compactdefaultargs") SetValue;
		%feature("autodoc", "	:param cval:
	:type cval: Handle_STEPCAFControl_DictionaryOfExternFile &
	:rtype: None
") SetValue;
		void SetValue (const Handle_STEPCAFControl_DictionaryOfExternFile & cval);
};


%make_alias(STEPCAFControl_StackItemOfDictionaryOfExternFile)

%extend STEPCAFControl_StackItemOfDictionaryOfExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_Writer;
class STEPCAFControl_Writer {
	public:
		%feature("compactdefaultargs") STEPCAFControl_Writer;
		%feature("autodoc", "	* Creates a writer with an empty STEP model and sets ColorMode, LayerMode, NameMode and PropsMode to Standard_True.

	:rtype: None
") STEPCAFControl_Writer;
		 STEPCAFControl_Writer ();
		%feature("compactdefaultargs") STEPCAFControl_Writer;
		%feature("autodoc", "	* Creates a reader tool and attaches it to an already existing Session Clears the session if it was not yet set for STEP Clears the internal data structures

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") STEPCAFControl_Writer;
		 STEPCAFControl_Writer (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Clears the internal data structures and attaches to a new session Clears the session if it was not yet set for STEP

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") Init;
		void Init (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* Writes all the produced models into file In case of multimodel with extern references, filename will be a name of root file, all other files have names of corresponding parts Provided for use like single-file writer

	:param filename:
	:type filename: char *
	:rtype: IFSelect_ReturnStatus
") Write;
		IFSelect_ReturnStatus Write (const char * filename);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	:param doc:
	:type doc: Handle_TDocStd_Document &
	:param mode: default value is STEPControl_AsIs
	:type mode: STEPControl_StepModelType
	:param multi: default value is 0
	:type multi: char *
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (const Handle_TDocStd_Document & doc,const STEPControl_StepModelType mode = STEPControl_AsIs,const char * multi = 0);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Transfers a document (or single label) to a STEP model The mode of translation of shape is AsIs If multi is not null pointer, it switches to multifile mode (with external refs), and string pointed by <multi> gives prefix for names of extern files (can be empty string) Returns True if translation is OK

	:param L:
	:type L: TDF_Label &
	:param mode: default value is STEPControl_AsIs
	:type mode: STEPControl_StepModelType
	:param multi: default value is 0
	:type multi: char *
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (const TDF_Label & L,const STEPControl_StepModelType mode = STEPControl_AsIs,const char * multi = 0);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param doc:
	:type doc: Handle_TDocStd_Document &
	:param filename:
	:type filename: TCollection_AsciiString &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const Handle_TDocStd_Document & doc,const TCollection_AsciiString & filename);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Transfers a document and writes it to a STEP file Returns True if translation is OK

	:param doc:
	:type doc: Handle_TDocStd_Document &
	:param filename:
	:type filename: char *
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const Handle_TDocStd_Document & doc,const char * filename);
		%feature("compactdefaultargs") ExternFiles;
		%feature("autodoc", "	* Returns data on external files Returns Null handle if no external files are read

	:rtype: Handle_STEPCAFControl_DictionaryOfExternFile
") ExternFiles;
		Handle_STEPCAFControl_DictionaryOfExternFile ExternFiles ();
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "	* Returns data on external file by its original label Returns False if no external file with given name is read

	:param L:
	:type L: TDF_Label &
	:param ef:
	:type ef: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") ExternFile;
		Standard_Boolean ExternFile (const TDF_Label & L,Handle_STEPCAFControl_ExternFile & ef);
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "	* Returns data on external file by its name Returns False if no external file with given name is read

	:param name:
	:type name: char *
	:param ef:
	:type ef: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") ExternFile;
		Standard_Boolean ExternFile (const char * name,Handle_STEPCAFControl_ExternFile & ef);
		%feature("compactdefaultargs") ChangeWriter;
		%feature("autodoc", "	* Returns basic reader for root file

	:rtype: STEPControl_Writer
") ChangeWriter;
		STEPControl_Writer & ChangeWriter ();
		%feature("compactdefaultargs") Writer;
		%feature("autodoc", "	* Returns basic reader as const

	:rtype: STEPControl_Writer
") Writer;
		const STEPControl_Writer & Writer ();
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "	* Set ColorMode for indicate write Colors or not.

	:param colormode:
	:type colormode: bool
	:rtype: None
") SetColorMode;
		void SetColorMode (const Standard_Boolean colormode);
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "	:rtype: bool
") GetColorMode;
		Standard_Boolean GetColorMode ();
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "	* Set NameMode for indicate write Name or not.

	:param namemode:
	:type namemode: bool
	:rtype: None
") SetNameMode;
		void SetNameMode (const Standard_Boolean namemode);
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "	:rtype: bool
") GetNameMode;
		Standard_Boolean GetNameMode ();
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "	* Set LayerMode for indicate write Layers or not.

	:param layermode:
	:type layermode: bool
	:rtype: None
") SetLayerMode;
		void SetLayerMode (const Standard_Boolean layermode);
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "	:rtype: bool
") GetLayerMode;
		Standard_Boolean GetLayerMode ();
		%feature("compactdefaultargs") SetPropsMode;
		%feature("autodoc", "	* PropsMode for indicate write Validation properties or not.

	:param propsmode:
	:type propsmode: bool
	:rtype: None
") SetPropsMode;
		void SetPropsMode (const Standard_Boolean propsmode);
		%feature("compactdefaultargs") GetPropsMode;
		%feature("autodoc", "	:rtype: bool
") GetPropsMode;
		Standard_Boolean GetPropsMode ();
		%feature("compactdefaultargs") SetSHUOMode;
		%feature("autodoc", "	* Set SHUO mode for indicate write SHUO or not.

	:param shuomode:
	:type shuomode: bool
	:rtype: None
") SetSHUOMode;
		void SetSHUOMode (const Standard_Boolean shuomode);
		%feature("compactdefaultargs") GetSHUOMode;
		%feature("autodoc", "	:rtype: bool
") GetSHUOMode;
		Standard_Boolean GetSHUOMode ();
		%feature("compactdefaultargs") SetDimTolMode;
		%feature("autodoc", "	* Set dimtolmode for indicate write D&GTs or not.

	:param dimtolmode:
	:type dimtolmode: bool
	:rtype: None
") SetDimTolMode;
		void SetDimTolMode (const Standard_Boolean dimtolmode);
		%feature("compactdefaultargs") GetDimTolMode;
		%feature("autodoc", "	:rtype: bool
") GetDimTolMode;
		Standard_Boolean GetDimTolMode ();
		%feature("compactdefaultargs") SetMaterialMode;
		%feature("autodoc", "	* Set dimtolmode for indicate write D&GTs or not.

	:param matmode:
	:type matmode: bool
	:rtype: None
") SetMaterialMode;
		void SetMaterialMode (const Standard_Boolean matmode);
		%feature("compactdefaultargs") GetMaterialMode;
		%feature("autodoc", "	:rtype: bool
") GetMaterialMode;
		Standard_Boolean GetMaterialMode ();
};


%extend STEPCAFControl_Writer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
