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
-- Module      : Network.AWS.EC2.Types.ConversionTaskState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ConversionTaskState
  ( ConversionTaskState
      ( ..,
        ConversionTaskStateActive,
        ConversionTaskStateCancelled,
        ConversionTaskStateCancelling,
        ConversionTaskStateCompleted
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ConversionTaskState = ConversionTaskState'
  { fromConversionTaskState ::
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

pattern ConversionTaskStateActive :: ConversionTaskState
pattern ConversionTaskStateActive = ConversionTaskState' "active"

pattern ConversionTaskStateCancelled :: ConversionTaskState
pattern ConversionTaskStateCancelled = ConversionTaskState' "cancelled"

pattern ConversionTaskStateCancelling :: ConversionTaskState
pattern ConversionTaskStateCancelling = ConversionTaskState' "cancelling"

pattern ConversionTaskStateCompleted :: ConversionTaskState
pattern ConversionTaskStateCompleted = ConversionTaskState' "completed"

{-# COMPLETE
  ConversionTaskStateActive,
  ConversionTaskStateCancelled,
  ConversionTaskStateCancelling,
  ConversionTaskStateCompleted,
  ConversionTaskState'
  #-}

instance Prelude.FromText ConversionTaskState where
  parser = ConversionTaskState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConversionTaskState where
  toText (ConversionTaskState' x) = x

instance Prelude.Hashable ConversionTaskState

instance Prelude.NFData ConversionTaskState

instance Prelude.ToByteString ConversionTaskState

instance Prelude.ToQuery ConversionTaskState

instance Prelude.ToHeader ConversionTaskState

instance Prelude.FromXML ConversionTaskState where
  parseXML = Prelude.parseXMLText "ConversionTaskState"
