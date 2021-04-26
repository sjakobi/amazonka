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
-- Module      : Network.AWS.Batch.Types.CEStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.CEStatus
  ( CEStatus
      ( ..,
        CEStatusCREATING,
        CEStatusDELETED,
        CEStatusDELETING,
        CEStatusINVALID,
        CEStatusUPDATING,
        CEStatusVALID
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CEStatus = CEStatus'
  { fromCEStatus ::
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

pattern CEStatusCREATING :: CEStatus
pattern CEStatusCREATING = CEStatus' "CREATING"

pattern CEStatusDELETED :: CEStatus
pattern CEStatusDELETED = CEStatus' "DELETED"

pattern CEStatusDELETING :: CEStatus
pattern CEStatusDELETING = CEStatus' "DELETING"

pattern CEStatusINVALID :: CEStatus
pattern CEStatusINVALID = CEStatus' "INVALID"

pattern CEStatusUPDATING :: CEStatus
pattern CEStatusUPDATING = CEStatus' "UPDATING"

pattern CEStatusVALID :: CEStatus
pattern CEStatusVALID = CEStatus' "VALID"

{-# COMPLETE
  CEStatusCREATING,
  CEStatusDELETED,
  CEStatusDELETING,
  CEStatusINVALID,
  CEStatusUPDATING,
  CEStatusVALID,
  CEStatus'
  #-}

instance Prelude.FromText CEStatus where
  parser = CEStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CEStatus where
  toText (CEStatus' x) = x

instance Prelude.Hashable CEStatus

instance Prelude.NFData CEStatus

instance Prelude.ToByteString CEStatus

instance Prelude.ToQuery CEStatus

instance Prelude.ToHeader CEStatus

instance Prelude.FromJSON CEStatus where
  parseJSON = Prelude.parseJSONText "CEStatus"
