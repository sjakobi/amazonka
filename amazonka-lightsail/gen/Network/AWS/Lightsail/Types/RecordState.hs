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
-- Module      : Network.AWS.Lightsail.Types.RecordState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RecordState
  ( RecordState
      ( ..,
        RecordStateFailed,
        RecordStateStarted,
        RecordStateSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecordState = RecordState'
  { fromRecordState ::
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

pattern RecordStateFailed :: RecordState
pattern RecordStateFailed = RecordState' "Failed"

pattern RecordStateStarted :: RecordState
pattern RecordStateStarted = RecordState' "Started"

pattern RecordStateSucceeded :: RecordState
pattern RecordStateSucceeded = RecordState' "Succeeded"

{-# COMPLETE
  RecordStateFailed,
  RecordStateStarted,
  RecordStateSucceeded,
  RecordState'
  #-}

instance Prelude.FromText RecordState where
  parser = RecordState' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecordState where
  toText (RecordState' x) = x

instance Prelude.Hashable RecordState

instance Prelude.NFData RecordState

instance Prelude.ToByteString RecordState

instance Prelude.ToQuery RecordState

instance Prelude.ToHeader RecordState

instance Prelude.FromJSON RecordState where
  parseJSON = Prelude.parseJSONText "RecordState"
