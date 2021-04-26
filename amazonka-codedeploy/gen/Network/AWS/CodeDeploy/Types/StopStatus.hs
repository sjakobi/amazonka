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
-- Module      : Network.AWS.CodeDeploy.Types.StopStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.StopStatus
  ( StopStatus
      ( ..,
        StopStatusPending,
        StopStatusSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StopStatus = StopStatus'
  { fromStopStatus ::
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

pattern StopStatusPending :: StopStatus
pattern StopStatusPending = StopStatus' "Pending"

pattern StopStatusSucceeded :: StopStatus
pattern StopStatusSucceeded = StopStatus' "Succeeded"

{-# COMPLETE
  StopStatusPending,
  StopStatusSucceeded,
  StopStatus'
  #-}

instance Prelude.FromText StopStatus where
  parser = StopStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StopStatus where
  toText (StopStatus' x) = x

instance Prelude.Hashable StopStatus

instance Prelude.NFData StopStatus

instance Prelude.ToByteString StopStatus

instance Prelude.ToQuery StopStatus

instance Prelude.ToHeader StopStatus

instance Prelude.FromJSON StopStatus where
  parseJSON = Prelude.parseJSONText "StopStatus"
