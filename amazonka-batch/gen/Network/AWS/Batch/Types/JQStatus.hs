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
-- Module      : Network.AWS.Batch.Types.JQStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JQStatus
  ( JQStatus
      ( ..,
        JQStatusCREATING,
        JQStatusDELETED,
        JQStatusDELETING,
        JQStatusINVALID,
        JQStatusUPDATING,
        JQStatusVALID
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JQStatus = JQStatus'
  { fromJQStatus ::
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

pattern JQStatusCREATING :: JQStatus
pattern JQStatusCREATING = JQStatus' "CREATING"

pattern JQStatusDELETED :: JQStatus
pattern JQStatusDELETED = JQStatus' "DELETED"

pattern JQStatusDELETING :: JQStatus
pattern JQStatusDELETING = JQStatus' "DELETING"

pattern JQStatusINVALID :: JQStatus
pattern JQStatusINVALID = JQStatus' "INVALID"

pattern JQStatusUPDATING :: JQStatus
pattern JQStatusUPDATING = JQStatus' "UPDATING"

pattern JQStatusVALID :: JQStatus
pattern JQStatusVALID = JQStatus' "VALID"

{-# COMPLETE
  JQStatusCREATING,
  JQStatusDELETED,
  JQStatusDELETING,
  JQStatusINVALID,
  JQStatusUPDATING,
  JQStatusVALID,
  JQStatus'
  #-}

instance Prelude.FromText JQStatus where
  parser = JQStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText JQStatus where
  toText (JQStatus' x) = x

instance Prelude.Hashable JQStatus

instance Prelude.NFData JQStatus

instance Prelude.ToByteString JQStatus

instance Prelude.ToQuery JQStatus

instance Prelude.ToHeader JQStatus

instance Prelude.FromJSON JQStatus where
  parseJSON = Prelude.parseJSONText "JQStatus"
