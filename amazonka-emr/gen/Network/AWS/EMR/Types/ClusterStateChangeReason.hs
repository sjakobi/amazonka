{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.ClusterStateChangeReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ClusterStateChangeReason where

import Network.AWS.EMR.Types.ClusterStateChangeReasonCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The reason that the cluster changed to its current state.
--
--
--
-- /See:/ 'clusterStateChangeReason' smart constructor.
data ClusterStateChangeReason = ClusterStateChangeReason'
  { _cscrMessage ::
      !(Maybe Text),
    _cscrCode ::
      !( Maybe
           ClusterStateChangeReasonCode
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

-- | Creates a value of 'ClusterStateChangeReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscrMessage' - The descriptive message for the state change reason.
--
-- * 'cscrCode' - The programmatic code for the state change reason.
clusterStateChangeReason ::
  ClusterStateChangeReason
clusterStateChangeReason =
  ClusterStateChangeReason'
    { _cscrMessage = Nothing,
      _cscrCode = Nothing
    }

-- | The descriptive message for the state change reason.
cscrMessage :: Lens' ClusterStateChangeReason (Maybe Text)
cscrMessage = lens _cscrMessage (\s a -> s {_cscrMessage = a})

-- | The programmatic code for the state change reason.
cscrCode :: Lens' ClusterStateChangeReason (Maybe ClusterStateChangeReasonCode)
cscrCode = lens _cscrCode (\s a -> s {_cscrCode = a})

instance FromJSON ClusterStateChangeReason where
  parseJSON =
    withObject
      "ClusterStateChangeReason"
      ( \x ->
          ClusterStateChangeReason'
            <$> (x .:? "Message") <*> (x .:? "Code")
      )

instance Hashable ClusterStateChangeReason

instance NFData ClusterStateChangeReason
