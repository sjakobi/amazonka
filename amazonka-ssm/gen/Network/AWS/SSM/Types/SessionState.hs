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
-- Module      : Network.AWS.SSM.Types.SessionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.SessionState
  ( SessionState
      ( ..,
        SessionStateActive,
        SessionStateHistory
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SessionState = SessionState'
  { fromSessionState ::
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

pattern SessionStateActive :: SessionState
pattern SessionStateActive = SessionState' "Active"

pattern SessionStateHistory :: SessionState
pattern SessionStateHistory = SessionState' "History"

{-# COMPLETE
  SessionStateActive,
  SessionStateHistory,
  SessionState'
  #-}

instance Prelude.FromText SessionState where
  parser = SessionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText SessionState where
  toText (SessionState' x) = x

instance Prelude.Hashable SessionState

instance Prelude.NFData SessionState

instance Prelude.ToByteString SessionState

instance Prelude.ToQuery SessionState

instance Prelude.ToHeader SessionState

instance Prelude.ToJSON SessionState where
  toJSON = Prelude.toJSONText
