{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.OptionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.OptionVersion where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The version for an option. Option group option versions are returned by the @DescribeOptionGroupOptions@ action.
--
--
--
-- /See:/ 'optionVersion' smart constructor.
data OptionVersion = OptionVersion'
  { _ovIsDefault ::
      !(Maybe Bool),
    _ovVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OptionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ovIsDefault' - True if the version is the default version of the option, and otherwise false.
--
-- * 'ovVersion' - The version of the option.
optionVersion ::
  OptionVersion
optionVersion =
  OptionVersion'
    { _ovIsDefault = Nothing,
      _ovVersion = Nothing
    }

-- | True if the version is the default version of the option, and otherwise false.
ovIsDefault :: Lens' OptionVersion (Maybe Bool)
ovIsDefault = lens _ovIsDefault (\s a -> s {_ovIsDefault = a})

-- | The version of the option.
ovVersion :: Lens' OptionVersion (Maybe Text)
ovVersion = lens _ovVersion (\s a -> s {_ovVersion = a})

instance FromXML OptionVersion where
  parseXML x =
    OptionVersion'
      <$> (x .@? "IsDefault") <*> (x .@? "Version")

instance Hashable OptionVersion

instance NFData OptionVersion
