{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.Types.ReplicaRegionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.ReplicaRegionType where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | (Optional) Custom type consisting of a @Region@ (required) and the @KmsKeyId@ which can be an @ARN@ , @Key ID@ , or @Alias@ .
--
--
--
-- /See:/ 'replicaRegionType' smart constructor.
data ReplicaRegionType = ReplicaRegionType'
  { _rrtKMSKeyId ::
      !(Maybe Text),
    _rrtRegion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicaRegionType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrtKMSKeyId' - Can be an @ARN@ , @Key ID@ , or @Alias@ .
--
-- * 'rrtRegion' - Describes a single instance of Region objects.
replicaRegionType ::
  ReplicaRegionType
replicaRegionType =
  ReplicaRegionType'
    { _rrtKMSKeyId = Nothing,
      _rrtRegion = Nothing
    }

-- | Can be an @ARN@ , @Key ID@ , or @Alias@ .
rrtKMSKeyId :: Lens' ReplicaRegionType (Maybe Text)
rrtKMSKeyId = lens _rrtKMSKeyId (\s a -> s {_rrtKMSKeyId = a})

-- | Describes a single instance of Region objects.
rrtRegion :: Lens' ReplicaRegionType (Maybe Text)
rrtRegion = lens _rrtRegion (\s a -> s {_rrtRegion = a})

instance Hashable ReplicaRegionType

instance NFData ReplicaRegionType

instance ToJSON ReplicaRegionType where
  toJSON ReplicaRegionType' {..} =
    object
      ( catMaybes
          [ ("KmsKeyId" .=) <$> _rrtKMSKeyId,
            ("Region" .=) <$> _rrtRegion
          ]
      )
