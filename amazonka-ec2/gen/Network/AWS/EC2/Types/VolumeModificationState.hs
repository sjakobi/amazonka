{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VolumeModificationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeModificationState
  ( VolumeModificationState
      ( ..,
        VMSCompleted,
        VMSFailed,
        VMSModifying,
        VMSOptimizing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VolumeModificationState
  = VolumeModificationState'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VMSCompleted :: VolumeModificationState
pattern VMSCompleted = VolumeModificationState' "completed"

pattern VMSFailed :: VolumeModificationState
pattern VMSFailed = VolumeModificationState' "failed"

pattern VMSModifying :: VolumeModificationState
pattern VMSModifying = VolumeModificationState' "modifying"

pattern VMSOptimizing :: VolumeModificationState
pattern VMSOptimizing = VolumeModificationState' "optimizing"

{-# COMPLETE
  VMSCompleted,
  VMSFailed,
  VMSModifying,
  VMSOptimizing,
  VolumeModificationState'
  #-}

instance FromText VolumeModificationState where
  parser = (VolumeModificationState' . mk) <$> takeText

instance ToText VolumeModificationState where
  toText (VolumeModificationState' ci) = original ci

instance Hashable VolumeModificationState

instance NFData VolumeModificationState

instance ToByteString VolumeModificationState

instance ToQuery VolumeModificationState

instance ToHeader VolumeModificationState

instance FromXML VolumeModificationState where
  parseXML = parseXMLText "VolumeModificationState"
