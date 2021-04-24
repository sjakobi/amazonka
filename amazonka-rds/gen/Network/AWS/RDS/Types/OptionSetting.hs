{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.OptionSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.OptionSetting where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.
--
--
--
-- /See:/ 'optionSetting' smart constructor.
data OptionSetting = OptionSetting'
  { _osIsCollection ::
      !(Maybe Bool),
    _osAllowedValues :: !(Maybe Text),
    _osName :: !(Maybe Text),
    _osApplyType :: !(Maybe Text),
    _osDescription :: !(Maybe Text),
    _osValue :: !(Maybe Text),
    _osDataType :: !(Maybe Text),
    _osIsModifiable :: !(Maybe Bool),
    _osDefaultValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OptionSetting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osIsCollection' - Indicates if the option setting is part of a collection.
--
-- * 'osAllowedValues' - The allowed values of the option setting.
--
-- * 'osName' - The name of the option that has settings that you can set.
--
-- * 'osApplyType' - The DB engine specific parameter type.
--
-- * 'osDescription' - The description of the option setting.
--
-- * 'osValue' - The current value of the option setting.
--
-- * 'osDataType' - The data type of the option setting.
--
-- * 'osIsModifiable' - A Boolean value that, when true, indicates the option setting can be modified from the default.
--
-- * 'osDefaultValue' - The default value of the option setting.
optionSetting ::
  OptionSetting
optionSetting =
  OptionSetting'
    { _osIsCollection = Nothing,
      _osAllowedValues = Nothing,
      _osName = Nothing,
      _osApplyType = Nothing,
      _osDescription = Nothing,
      _osValue = Nothing,
      _osDataType = Nothing,
      _osIsModifiable = Nothing,
      _osDefaultValue = Nothing
    }

-- | Indicates if the option setting is part of a collection.
osIsCollection :: Lens' OptionSetting (Maybe Bool)
osIsCollection = lens _osIsCollection (\s a -> s {_osIsCollection = a})

-- | The allowed values of the option setting.
osAllowedValues :: Lens' OptionSetting (Maybe Text)
osAllowedValues = lens _osAllowedValues (\s a -> s {_osAllowedValues = a})

-- | The name of the option that has settings that you can set.
osName :: Lens' OptionSetting (Maybe Text)
osName = lens _osName (\s a -> s {_osName = a})

-- | The DB engine specific parameter type.
osApplyType :: Lens' OptionSetting (Maybe Text)
osApplyType = lens _osApplyType (\s a -> s {_osApplyType = a})

-- | The description of the option setting.
osDescription :: Lens' OptionSetting (Maybe Text)
osDescription = lens _osDescription (\s a -> s {_osDescription = a})

-- | The current value of the option setting.
osValue :: Lens' OptionSetting (Maybe Text)
osValue = lens _osValue (\s a -> s {_osValue = a})

-- | The data type of the option setting.
osDataType :: Lens' OptionSetting (Maybe Text)
osDataType = lens _osDataType (\s a -> s {_osDataType = a})

-- | A Boolean value that, when true, indicates the option setting can be modified from the default.
osIsModifiable :: Lens' OptionSetting (Maybe Bool)
osIsModifiable = lens _osIsModifiable (\s a -> s {_osIsModifiable = a})

-- | The default value of the option setting.
osDefaultValue :: Lens' OptionSetting (Maybe Text)
osDefaultValue = lens _osDefaultValue (\s a -> s {_osDefaultValue = a})

instance FromXML OptionSetting where
  parseXML x =
    OptionSetting'
      <$> (x .@? "IsCollection")
      <*> (x .@? "AllowedValues")
      <*> (x .@? "Name")
      <*> (x .@? "ApplyType")
      <*> (x .@? "Description")
      <*> (x .@? "Value")
      <*> (x .@? "DataType")
      <*> (x .@? "IsModifiable")
      <*> (x .@? "DefaultValue")

instance Hashable OptionSetting

instance NFData OptionSetting

instance ToQuery OptionSetting where
  toQuery OptionSetting' {..} =
    mconcat
      [ "IsCollection" =: _osIsCollection,
        "AllowedValues" =: _osAllowedValues,
        "Name" =: _osName,
        "ApplyType" =: _osApplyType,
        "Description" =: _osDescription,
        "Value" =: _osValue,
        "DataType" =: _osDataType,
        "IsModifiable" =: _osIsModifiable,
        "DefaultValue" =: _osDefaultValue
      ]
