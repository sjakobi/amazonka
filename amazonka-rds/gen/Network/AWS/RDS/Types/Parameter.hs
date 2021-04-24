{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.Parameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.Parameter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.ApplyMethod

-- | This data type is used as a request parameter in the @ModifyDBParameterGroup@ and @ResetDBParameterGroup@ actions.
--
--
-- This data type is used as a response element in the @DescribeEngineDefaultParameters@ and @DescribeDBParameters@ actions.
--
--
-- /See:/ 'parameter' smart constructor.
data Parameter = Parameter'
  { _pAllowedValues ::
      !(Maybe Text),
    _pSupportedEngineModes :: !(Maybe [Text]),
    _pSource :: !(Maybe Text),
    _pParameterValue :: !(Maybe Text),
    _pApplyType :: !(Maybe Text),
    _pParameterName :: !(Maybe Text),
    _pDescription :: !(Maybe Text),
    _pApplyMethod :: !(Maybe ApplyMethod),
    _pDataType :: !(Maybe Text),
    _pIsModifiable :: !(Maybe Bool),
    _pMinimumEngineVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAllowedValues' - Specifies the valid range of values for the parameter.
--
-- * 'pSupportedEngineModes' - The valid DB engine modes.
--
-- * 'pSource' - Indicates the source of the parameter value.
--
-- * 'pParameterValue' - Specifies the value of the parameter.
--
-- * 'pApplyType' - Specifies the engine specific parameters type.
--
-- * 'pParameterName' - Specifies the name of the parameter.
--
-- * 'pDescription' - Provides a description of the parameter.
--
-- * 'pApplyMethod' - Indicates when to apply parameter updates.
--
-- * 'pDataType' - Specifies the valid data type for the parameter.
--
-- * 'pIsModifiable' - Indicates whether (@true@ ) or not (@false@ ) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.
--
-- * 'pMinimumEngineVersion' - The earliest engine version to which the parameter can apply.
parameter ::
  Parameter
parameter =
  Parameter'
    { _pAllowedValues = Nothing,
      _pSupportedEngineModes = Nothing,
      _pSource = Nothing,
      _pParameterValue = Nothing,
      _pApplyType = Nothing,
      _pParameterName = Nothing,
      _pDescription = Nothing,
      _pApplyMethod = Nothing,
      _pDataType = Nothing,
      _pIsModifiable = Nothing,
      _pMinimumEngineVersion = Nothing
    }

-- | Specifies the valid range of values for the parameter.
pAllowedValues :: Lens' Parameter (Maybe Text)
pAllowedValues = lens _pAllowedValues (\s a -> s {_pAllowedValues = a})

-- | The valid DB engine modes.
pSupportedEngineModes :: Lens' Parameter [Text]
pSupportedEngineModes = lens _pSupportedEngineModes (\s a -> s {_pSupportedEngineModes = a}) . _Default . _Coerce

-- | Indicates the source of the parameter value.
pSource :: Lens' Parameter (Maybe Text)
pSource = lens _pSource (\s a -> s {_pSource = a})

-- | Specifies the value of the parameter.
pParameterValue :: Lens' Parameter (Maybe Text)
pParameterValue = lens _pParameterValue (\s a -> s {_pParameterValue = a})

-- | Specifies the engine specific parameters type.
pApplyType :: Lens' Parameter (Maybe Text)
pApplyType = lens _pApplyType (\s a -> s {_pApplyType = a})

-- | Specifies the name of the parameter.
pParameterName :: Lens' Parameter (Maybe Text)
pParameterName = lens _pParameterName (\s a -> s {_pParameterName = a})

-- | Provides a description of the parameter.
pDescription :: Lens' Parameter (Maybe Text)
pDescription = lens _pDescription (\s a -> s {_pDescription = a})

-- | Indicates when to apply parameter updates.
pApplyMethod :: Lens' Parameter (Maybe ApplyMethod)
pApplyMethod = lens _pApplyMethod (\s a -> s {_pApplyMethod = a})

-- | Specifies the valid data type for the parameter.
pDataType :: Lens' Parameter (Maybe Text)
pDataType = lens _pDataType (\s a -> s {_pDataType = a})

-- | Indicates whether (@true@ ) or not (@false@ ) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.
pIsModifiable :: Lens' Parameter (Maybe Bool)
pIsModifiable = lens _pIsModifiable (\s a -> s {_pIsModifiable = a})

-- | The earliest engine version to which the parameter can apply.
pMinimumEngineVersion :: Lens' Parameter (Maybe Text)
pMinimumEngineVersion = lens _pMinimumEngineVersion (\s a -> s {_pMinimumEngineVersion = a})

instance FromXML Parameter where
  parseXML x =
    Parameter'
      <$> (x .@? "AllowedValues")
      <*> ( x .@? "SupportedEngineModes" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Source")
      <*> (x .@? "ParameterValue")
      <*> (x .@? "ApplyType")
      <*> (x .@? "ParameterName")
      <*> (x .@? "Description")
      <*> (x .@? "ApplyMethod")
      <*> (x .@? "DataType")
      <*> (x .@? "IsModifiable")
      <*> (x .@? "MinimumEngineVersion")

instance Hashable Parameter

instance NFData Parameter

instance ToQuery Parameter where
  toQuery Parameter' {..} =
    mconcat
      [ "AllowedValues" =: _pAllowedValues,
        "SupportedEngineModes"
          =: toQuery
            (toQueryList "member" <$> _pSupportedEngineModes),
        "Source" =: _pSource,
        "ParameterValue" =: _pParameterValue,
        "ApplyType" =: _pApplyType,
        "ParameterName" =: _pParameterName,
        "Description" =: _pDescription,
        "ApplyMethod" =: _pApplyMethod,
        "DataType" =: _pDataType,
        "IsModifiable" =: _pIsModifiable,
        "MinimumEngineVersion" =: _pMinimumEngineVersion
      ]
