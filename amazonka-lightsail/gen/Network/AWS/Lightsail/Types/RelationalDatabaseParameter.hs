{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabaseParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabaseParameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the parameters of a database.
--
--
--
-- /See:/ 'relationalDatabaseParameter' smart constructor.
data RelationalDatabaseParameter = RelationalDatabaseParameter'
  { _rdpAllowedValues ::
      !(Maybe Text),
    _rdpParameterValue ::
      !(Maybe Text),
    _rdpApplyType ::
      !(Maybe Text),
    _rdpParameterName ::
      !(Maybe Text),
    _rdpDescription ::
      !(Maybe Text),
    _rdpApplyMethod ::
      !(Maybe Text),
    _rdpIsModifiable ::
      !(Maybe Bool),
    _rdpDataType ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RelationalDatabaseParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdpAllowedValues' - Specifies the valid range of values for the parameter.
--
-- * 'rdpParameterValue' - Specifies the value of the parameter.
--
-- * 'rdpApplyType' - Specifies the engine-specific parameter type.
--
-- * 'rdpParameterName' - Specifies the name of the parameter.
--
-- * 'rdpDescription' - Provides a description of the parameter.
--
-- * 'rdpApplyMethod' - Indicates when parameter updates are applied. Can be @immediate@ or @pending-reboot@ .
--
-- * 'rdpIsModifiable' - A Boolean value indicating whether the parameter can be modified.
--
-- * 'rdpDataType' - Specifies the valid data type for the parameter.
relationalDatabaseParameter ::
  RelationalDatabaseParameter
relationalDatabaseParameter =
  RelationalDatabaseParameter'
    { _rdpAllowedValues =
        Nothing,
      _rdpParameterValue = Nothing,
      _rdpApplyType = Nothing,
      _rdpParameterName = Nothing,
      _rdpDescription = Nothing,
      _rdpApplyMethod = Nothing,
      _rdpIsModifiable = Nothing,
      _rdpDataType = Nothing
    }

-- | Specifies the valid range of values for the parameter.
rdpAllowedValues :: Lens' RelationalDatabaseParameter (Maybe Text)
rdpAllowedValues = lens _rdpAllowedValues (\s a -> s {_rdpAllowedValues = a})

-- | Specifies the value of the parameter.
rdpParameterValue :: Lens' RelationalDatabaseParameter (Maybe Text)
rdpParameterValue = lens _rdpParameterValue (\s a -> s {_rdpParameterValue = a})

-- | Specifies the engine-specific parameter type.
rdpApplyType :: Lens' RelationalDatabaseParameter (Maybe Text)
rdpApplyType = lens _rdpApplyType (\s a -> s {_rdpApplyType = a})

-- | Specifies the name of the parameter.
rdpParameterName :: Lens' RelationalDatabaseParameter (Maybe Text)
rdpParameterName = lens _rdpParameterName (\s a -> s {_rdpParameterName = a})

-- | Provides a description of the parameter.
rdpDescription :: Lens' RelationalDatabaseParameter (Maybe Text)
rdpDescription = lens _rdpDescription (\s a -> s {_rdpDescription = a})

-- | Indicates when parameter updates are applied. Can be @immediate@ or @pending-reboot@ .
rdpApplyMethod :: Lens' RelationalDatabaseParameter (Maybe Text)
rdpApplyMethod = lens _rdpApplyMethod (\s a -> s {_rdpApplyMethod = a})

-- | A Boolean value indicating whether the parameter can be modified.
rdpIsModifiable :: Lens' RelationalDatabaseParameter (Maybe Bool)
rdpIsModifiable = lens _rdpIsModifiable (\s a -> s {_rdpIsModifiable = a})

-- | Specifies the valid data type for the parameter.
rdpDataType :: Lens' RelationalDatabaseParameter (Maybe Text)
rdpDataType = lens _rdpDataType (\s a -> s {_rdpDataType = a})

instance FromJSON RelationalDatabaseParameter where
  parseJSON =
    withObject
      "RelationalDatabaseParameter"
      ( \x ->
          RelationalDatabaseParameter'
            <$> (x .:? "allowedValues")
            <*> (x .:? "parameterValue")
            <*> (x .:? "applyType")
            <*> (x .:? "parameterName")
            <*> (x .:? "description")
            <*> (x .:? "applyMethod")
            <*> (x .:? "isModifiable")
            <*> (x .:? "dataType")
      )

instance Hashable RelationalDatabaseParameter

instance NFData RelationalDatabaseParameter

instance ToJSON RelationalDatabaseParameter where
  toJSON RelationalDatabaseParameter' {..} =
    object
      ( catMaybes
          [ ("allowedValues" .=) <$> _rdpAllowedValues,
            ("parameterValue" .=) <$> _rdpParameterValue,
            ("applyType" .=) <$> _rdpApplyType,
            ("parameterName" .=) <$> _rdpParameterName,
            ("description" .=) <$> _rdpDescription,
            ("applyMethod" .=) <$> _rdpApplyMethod,
            ("isModifiable" .=) <$> _rdpIsModifiable,
            ("dataType" .=) <$> _rdpDataType
          ]
      )
