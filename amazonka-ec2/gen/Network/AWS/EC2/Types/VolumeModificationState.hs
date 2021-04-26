{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        VolumeModificationStateCompleted,
        VolumeModificationStateFailed,
        VolumeModificationStateModifying,
        VolumeModificationStateOptimizing
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VolumeModificationState = VolumeModificationState'
  { fromVolumeModificationState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern VolumeModificationStateCompleted :: VolumeModificationState
pattern VolumeModificationStateCompleted = VolumeModificationState' "completed"

pattern VolumeModificationStateFailed :: VolumeModificationState
pattern VolumeModificationStateFailed = VolumeModificationState' "failed"

pattern VolumeModificationStateModifying :: VolumeModificationState
pattern VolumeModificationStateModifying = VolumeModificationState' "modifying"

pattern VolumeModificationStateOptimizing :: VolumeModificationState
pattern VolumeModificationStateOptimizing = VolumeModificationState' "optimizing"

{-# COMPLETE
  VolumeModificationStateCompleted,
  VolumeModificationStateFailed,
  VolumeModificationStateModifying,
  VolumeModificationStateOptimizing,
  VolumeModificationState'
  #-}

instance Prelude.FromText VolumeModificationState where
  parser = VolumeModificationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText VolumeModificationState where
  toText (VolumeModificationState' x) = x

instance Prelude.Hashable VolumeModificationState

instance Prelude.NFData VolumeModificationState

instance Prelude.ToByteString VolumeModificationState

instance Prelude.ToQuery VolumeModificationState

instance Prelude.ToHeader VolumeModificationState

instance Prelude.FromXML VolumeModificationState where
  parseXML = Prelude.parseXMLText "VolumeModificationState"
