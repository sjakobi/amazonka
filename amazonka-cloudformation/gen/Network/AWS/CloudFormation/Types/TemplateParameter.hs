{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.TemplateParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.TemplateParameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The TemplateParameter data type.
--
--
--
-- /See:/ 'templateParameter' smart constructor.
data TemplateParameter = TemplateParameter'
  { _tpParameterKey ::
      !(Maybe Text),
    _tpDescription :: !(Maybe Text),
    _tpNoEcho :: !(Maybe Bool),
    _tpDefaultValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TemplateParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpParameterKey' - The name associated with the parameter.
--
-- * 'tpDescription' - User defined description associated with the parameter.
--
-- * 'tpNoEcho' - Flag indicating whether the parameter should be displayed as plain text in logs and UIs.
--
-- * 'tpDefaultValue' - The default value associated with the parameter.
templateParameter ::
  TemplateParameter
templateParameter =
  TemplateParameter'
    { _tpParameterKey = Nothing,
      _tpDescription = Nothing,
      _tpNoEcho = Nothing,
      _tpDefaultValue = Nothing
    }

-- | The name associated with the parameter.
tpParameterKey :: Lens' TemplateParameter (Maybe Text)
tpParameterKey = lens _tpParameterKey (\s a -> s {_tpParameterKey = a})

-- | User defined description associated with the parameter.
tpDescription :: Lens' TemplateParameter (Maybe Text)
tpDescription = lens _tpDescription (\s a -> s {_tpDescription = a})

-- | Flag indicating whether the parameter should be displayed as plain text in logs and UIs.
tpNoEcho :: Lens' TemplateParameter (Maybe Bool)
tpNoEcho = lens _tpNoEcho (\s a -> s {_tpNoEcho = a})

-- | The default value associated with the parameter.
tpDefaultValue :: Lens' TemplateParameter (Maybe Text)
tpDefaultValue = lens _tpDefaultValue (\s a -> s {_tpDefaultValue = a})

instance FromXML TemplateParameter where
  parseXML x =
    TemplateParameter'
      <$> (x .@? "ParameterKey")
      <*> (x .@? "Description")
      <*> (x .@? "NoEcho")
      <*> (x .@? "DefaultValue")

instance Hashable TemplateParameter

instance NFData TemplateParameter
