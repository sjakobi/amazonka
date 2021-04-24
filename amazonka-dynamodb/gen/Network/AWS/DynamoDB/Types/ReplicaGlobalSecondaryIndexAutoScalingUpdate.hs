{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexAutoScalingUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexAutoScalingUpdate where

import Network.AWS.DynamoDB.Types.AutoScalingSettingsUpdate
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the auto scaling settings of a global secondary index for a replica that will be modified.
--
--
--
-- /See:/ 'replicaGlobalSecondaryIndexAutoScalingUpdate' smart constructor.
data ReplicaGlobalSecondaryIndexAutoScalingUpdate = ReplicaGlobalSecondaryIndexAutoScalingUpdate'
  { _rgsiasuIndexName ::
      !( Maybe
           Text
       ),
    _rgsiasuProvisionedReadCapacityAutoScalingUpdate ::
      !( Maybe
           AutoScalingSettingsUpdate
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReplicaGlobalSecondaryIndexAutoScalingUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgsiasuIndexName' - The name of the global secondary index.
--
-- * 'rgsiasuProvisionedReadCapacityAutoScalingUpdate' - Undocumented member.
replicaGlobalSecondaryIndexAutoScalingUpdate ::
  ReplicaGlobalSecondaryIndexAutoScalingUpdate
replicaGlobalSecondaryIndexAutoScalingUpdate =
  ReplicaGlobalSecondaryIndexAutoScalingUpdate'
    { _rgsiasuIndexName =
        Nothing,
      _rgsiasuProvisionedReadCapacityAutoScalingUpdate =
        Nothing
    }

-- | The name of the global secondary index.
rgsiasuIndexName :: Lens' ReplicaGlobalSecondaryIndexAutoScalingUpdate (Maybe Text)
rgsiasuIndexName = lens _rgsiasuIndexName (\s a -> s {_rgsiasuIndexName = a})

-- | Undocumented member.
rgsiasuProvisionedReadCapacityAutoScalingUpdate :: Lens' ReplicaGlobalSecondaryIndexAutoScalingUpdate (Maybe AutoScalingSettingsUpdate)
rgsiasuProvisionedReadCapacityAutoScalingUpdate = lens _rgsiasuProvisionedReadCapacityAutoScalingUpdate (\s a -> s {_rgsiasuProvisionedReadCapacityAutoScalingUpdate = a})

instance
  Hashable
    ReplicaGlobalSecondaryIndexAutoScalingUpdate

instance
  NFData
    ReplicaGlobalSecondaryIndexAutoScalingUpdate

instance
  ToJSON
    ReplicaGlobalSecondaryIndexAutoScalingUpdate
  where
  toJSON
    ReplicaGlobalSecondaryIndexAutoScalingUpdate' {..} =
      object
        ( catMaybes
            [ ("IndexName" .=) <$> _rgsiasuIndexName,
              ("ProvisionedReadCapacityAutoScalingUpdate" .=)
                <$> _rgsiasuProvisionedReadCapacityAutoScalingUpdate
            ]
        )
