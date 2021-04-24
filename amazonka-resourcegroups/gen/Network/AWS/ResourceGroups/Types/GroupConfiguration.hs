{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.GroupConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.GroupConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroups.Types.GroupConfigurationItem
import Network.AWS.ResourceGroups.Types.GroupConfigurationStatus

-- | A service configuration associated with a resource group. The configuration options are determined by the AWS service that defines the @Type@ , and specifies which resources can be included in the group. You can add a service configuration when you create the group by using 'CreateGroup' , or later by using the 'PutGroupConfiguration' operation. For details about group service configuration syntax, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
--
--
-- /See:/ 'groupConfiguration' smart constructor.
data GroupConfiguration = GroupConfiguration'
  { _gcStatus ::
      !(Maybe GroupConfigurationStatus),
    _gcConfiguration ::
      !(Maybe [GroupConfigurationItem]),
    _gcFailureReason :: !(Maybe Text),
    _gcProposedConfiguration ::
      !(Maybe [GroupConfigurationItem])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcStatus' - The current status of an attempt to update the group configuration.
--
-- * 'gcConfiguration' - The configuration currently associated with the group and in effect.
--
-- * 'gcFailureReason' - If present, the reason why a request to update the group configuration failed.
--
-- * 'gcProposedConfiguration' - If present, the new configuration that is in the process of being applied to the group.
groupConfiguration ::
  GroupConfiguration
groupConfiguration =
  GroupConfiguration'
    { _gcStatus = Nothing,
      _gcConfiguration = Nothing,
      _gcFailureReason = Nothing,
      _gcProposedConfiguration = Nothing
    }

-- | The current status of an attempt to update the group configuration.
gcStatus :: Lens' GroupConfiguration (Maybe GroupConfigurationStatus)
gcStatus = lens _gcStatus (\s a -> s {_gcStatus = a})

-- | The configuration currently associated with the group and in effect.
gcConfiguration :: Lens' GroupConfiguration [GroupConfigurationItem]
gcConfiguration = lens _gcConfiguration (\s a -> s {_gcConfiguration = a}) . _Default . _Coerce

-- | If present, the reason why a request to update the group configuration failed.
gcFailureReason :: Lens' GroupConfiguration (Maybe Text)
gcFailureReason = lens _gcFailureReason (\s a -> s {_gcFailureReason = a})

-- | If present, the new configuration that is in the process of being applied to the group.
gcProposedConfiguration :: Lens' GroupConfiguration [GroupConfigurationItem]
gcProposedConfiguration = lens _gcProposedConfiguration (\s a -> s {_gcProposedConfiguration = a}) . _Default . _Coerce

instance FromJSON GroupConfiguration where
  parseJSON =
    withObject
      "GroupConfiguration"
      ( \x ->
          GroupConfiguration'
            <$> (x .:? "Status")
            <*> (x .:? "Configuration" .!= mempty)
            <*> (x .:? "FailureReason")
            <*> (x .:? "ProposedConfiguration" .!= mempty)
      )

instance Hashable GroupConfiguration

instance NFData GroupConfiguration
