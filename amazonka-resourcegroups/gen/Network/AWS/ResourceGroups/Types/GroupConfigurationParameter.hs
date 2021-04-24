{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.GroupConfigurationParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.GroupConfigurationParameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A parameter for a group configuration item. For details about group service configuration syntax, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
--
--
-- /See:/ 'groupConfigurationParameter' smart constructor.
data GroupConfigurationParameter = GroupConfigurationParameter'
  { _gcpValues ::
      !(Maybe [Text]),
    _gcpName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GroupConfigurationParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpValues' - The value or values to be used for the specified parameter. For the list of values you can use with each parameter, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types Supported resource types and parameters> .
--
-- * 'gcpName' - The name of the group configuration parameter. For the list of parameters that you can use with each configuration item type, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types Supported resource types and parameters> .
groupConfigurationParameter ::
  -- | 'gcpName'
  Text ->
  GroupConfigurationParameter
groupConfigurationParameter pName_ =
  GroupConfigurationParameter'
    { _gcpValues = Nothing,
      _gcpName = pName_
    }

-- | The value or values to be used for the specified parameter. For the list of values you can use with each parameter, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types Supported resource types and parameters> .
gcpValues :: Lens' GroupConfigurationParameter [Text]
gcpValues = lens _gcpValues (\s a -> s {_gcpValues = a}) . _Default . _Coerce

-- | The name of the group configuration parameter. For the list of parameters that you can use with each configuration item type, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types Supported resource types and parameters> .
gcpName :: Lens' GroupConfigurationParameter Text
gcpName = lens _gcpName (\s a -> s {_gcpName = a})

instance FromJSON GroupConfigurationParameter where
  parseJSON =
    withObject
      "GroupConfigurationParameter"
      ( \x ->
          GroupConfigurationParameter'
            <$> (x .:? "Values" .!= mempty) <*> (x .: "Name")
      )

instance Hashable GroupConfigurationParameter

instance NFData GroupConfigurationParameter

instance ToJSON GroupConfigurationParameter where
  toJSON GroupConfigurationParameter' {..} =
    object
      ( catMaybes
          [ ("Values" .=) <$> _gcpValues,
            Just ("Name" .= _gcpName)
          ]
      )
