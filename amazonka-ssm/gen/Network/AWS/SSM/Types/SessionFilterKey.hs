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
-- Module      : Network.AWS.SSM.Types.SessionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.SessionFilterKey
  ( SessionFilterKey
      ( ..,
        SessionFilterKeyInvokedAfter,
        SessionFilterKeyInvokedBefore,
        SessionFilterKeyOwner,
        SessionFilterKeySessionId,
        SessionFilterKeyStatus',
        SessionFilterKeyTarget
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SessionFilterKey = SessionFilterKey'
  { fromSessionFilterKey ::
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

pattern SessionFilterKeyInvokedAfter :: SessionFilterKey
pattern SessionFilterKeyInvokedAfter = SessionFilterKey' "InvokedAfter"

pattern SessionFilterKeyInvokedBefore :: SessionFilterKey
pattern SessionFilterKeyInvokedBefore = SessionFilterKey' "InvokedBefore"

pattern SessionFilterKeyOwner :: SessionFilterKey
pattern SessionFilterKeyOwner = SessionFilterKey' "Owner"

pattern SessionFilterKeySessionId :: SessionFilterKey
pattern SessionFilterKeySessionId = SessionFilterKey' "SessionId"

pattern SessionFilterKeyStatus' :: SessionFilterKey
pattern SessionFilterKeyStatus' = SessionFilterKey' "Status"

pattern SessionFilterKeyTarget :: SessionFilterKey
pattern SessionFilterKeyTarget = SessionFilterKey' "Target"

{-# COMPLETE
  SessionFilterKeyInvokedAfter,
  SessionFilterKeyInvokedBefore,
  SessionFilterKeyOwner,
  SessionFilterKeySessionId,
  SessionFilterKeyStatus',
  SessionFilterKeyTarget,
  SessionFilterKey'
  #-}

instance Prelude.FromText SessionFilterKey where
  parser = SessionFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText SessionFilterKey where
  toText (SessionFilterKey' x) = x

instance Prelude.Hashable SessionFilterKey

instance Prelude.NFData SessionFilterKey

instance Prelude.ToByteString SessionFilterKey

instance Prelude.ToQuery SessionFilterKey

instance Prelude.ToHeader SessionFilterKey

instance Prelude.ToJSON SessionFilterKey where
  toJSON = Prelude.toJSONText
