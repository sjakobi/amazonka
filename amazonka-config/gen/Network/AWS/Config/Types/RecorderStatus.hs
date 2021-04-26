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
-- Module      : Network.AWS.Config.Types.RecorderStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RecorderStatus
  ( RecorderStatus
      ( ..,
        RecorderStatusFailure,
        RecorderStatusPending,
        RecorderStatusSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecorderStatus = RecorderStatus'
  { fromRecorderStatus ::
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

pattern RecorderStatusFailure :: RecorderStatus
pattern RecorderStatusFailure = RecorderStatus' "Failure"

pattern RecorderStatusPending :: RecorderStatus
pattern RecorderStatusPending = RecorderStatus' "Pending"

pattern RecorderStatusSuccess :: RecorderStatus
pattern RecorderStatusSuccess = RecorderStatus' "Success"

{-# COMPLETE
  RecorderStatusFailure,
  RecorderStatusPending,
  RecorderStatusSuccess,
  RecorderStatus'
  #-}

instance Prelude.FromText RecorderStatus where
  parser = RecorderStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecorderStatus where
  toText (RecorderStatus' x) = x

instance Prelude.Hashable RecorderStatus

instance Prelude.NFData RecorderStatus

instance Prelude.ToByteString RecorderStatus

instance Prelude.ToQuery RecorderStatus

instance Prelude.ToHeader RecorderStatus

instance Prelude.FromJSON RecorderStatus where
  parseJSON = Prelude.parseJSONText "RecorderStatus"
