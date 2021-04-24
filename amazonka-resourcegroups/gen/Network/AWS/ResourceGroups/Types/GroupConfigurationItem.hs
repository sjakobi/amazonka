{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.GroupConfigurationItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.GroupConfigurationItem where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroups.Types.GroupConfigurationParameter

-- | An item in a group configuration. A group service configuration can have one or more items. For details about group service configuration syntax, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
--
--
-- /See:/ 'groupConfigurationItem' smart constructor.
data GroupConfigurationItem = GroupConfigurationItem'
  { _gciParameters ::
      !( Maybe
           [GroupConfigurationParameter]
       ),
    _gciType :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GroupConfigurationItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gciParameters' - A collection of parameters for this group configuration item. For the list of parameters that you can use with each configuration item type, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types Supported resource types and parameters> .
--
-- * 'gciType' - Specifies the type of group configuration item. Each item must have a unique value for @type@ . For the list of types that you can specify for a configuration item, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types Supported resource types and parameters> .
groupConfigurationItem ::
  -- | 'gciType'
  Text ->
  GroupConfigurationItem
groupConfigurationItem pType_ =
  GroupConfigurationItem'
    { _gciParameters = Nothing,
      _gciType = pType_
    }

-- | A collection of parameters for this group configuration item. For the list of parameters that you can use with each configuration item type, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types Supported resource types and parameters> .
gciParameters :: Lens' GroupConfigurationItem [GroupConfigurationParameter]
gciParameters = lens _gciParameters (\s a -> s {_gciParameters = a}) . _Default . _Coerce

-- | Specifies the type of group configuration item. Each item must have a unique value for @type@ . For the list of types that you can specify for a configuration item, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types Supported resource types and parameters> .
gciType :: Lens' GroupConfigurationItem Text
gciType = lens _gciType (\s a -> s {_gciType = a})

instance FromJSON GroupConfigurationItem where
  parseJSON =
    withObject
      "GroupConfigurationItem"
      ( \x ->
          GroupConfigurationItem'
            <$> (x .:? "Parameters" .!= mempty) <*> (x .: "Type")
      )

instance Hashable GroupConfigurationItem

instance NFData GroupConfigurationItem

instance ToJSON GroupConfigurationItem where
  toJSON GroupConfigurationItem' {..} =
    object
      ( catMaybes
          [ ("Parameters" .=) <$> _gciParameters,
            Just ("Type" .= _gciType)
          ]
      )
