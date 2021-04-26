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
-- Module      : Network.AWS.SWF.Types.CloseStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.CloseStatus
  ( CloseStatus
      ( ..,
        CloseStatusCANCELED,
        CloseStatusCOMPLETED,
        CloseStatusCONTINUEDASNEW,
        CloseStatusFAILED,
        CloseStatusTERMINATED,
        CloseStatusTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CloseStatus = CloseStatus'
  { fromCloseStatus ::
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

pattern CloseStatusCANCELED :: CloseStatus
pattern CloseStatusCANCELED = CloseStatus' "CANCELED"

pattern CloseStatusCOMPLETED :: CloseStatus
pattern CloseStatusCOMPLETED = CloseStatus' "COMPLETED"

pattern CloseStatusCONTINUEDASNEW :: CloseStatus
pattern CloseStatusCONTINUEDASNEW = CloseStatus' "CONTINUED_AS_NEW"

pattern CloseStatusFAILED :: CloseStatus
pattern CloseStatusFAILED = CloseStatus' "FAILED"

pattern CloseStatusTERMINATED :: CloseStatus
pattern CloseStatusTERMINATED = CloseStatus' "TERMINATED"

pattern CloseStatusTIMEDOUT :: CloseStatus
pattern CloseStatusTIMEDOUT = CloseStatus' "TIMED_OUT"

{-# COMPLETE
  CloseStatusCANCELED,
  CloseStatusCOMPLETED,
  CloseStatusCONTINUEDASNEW,
  CloseStatusFAILED,
  CloseStatusTERMINATED,
  CloseStatusTIMEDOUT,
  CloseStatus'
  #-}

instance Prelude.FromText CloseStatus where
  parser = CloseStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CloseStatus where
  toText (CloseStatus' x) = x

instance Prelude.Hashable CloseStatus

instance Prelude.NFData CloseStatus

instance Prelude.ToByteString CloseStatus

instance Prelude.ToQuery CloseStatus

instance Prelude.ToHeader CloseStatus

instance Prelude.ToJSON CloseStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CloseStatus where
  parseJSON = Prelude.parseJSONText "CloseStatus"
