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
-- Module      : Network.AWS.ServiceCatalog.Types.ShareStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ShareStatus
  ( ShareStatus
      ( ..,
        ShareStatusCOMPLETED,
        ShareStatusCOMPLETEDWITHERRORS,
        ShareStatusERROR,
        ShareStatusINPROGRESS,
        ShareStatusNOTSTARTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShareStatus = ShareStatus'
  { fromShareStatus ::
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

pattern ShareStatusCOMPLETED :: ShareStatus
pattern ShareStatusCOMPLETED = ShareStatus' "COMPLETED"

pattern ShareStatusCOMPLETEDWITHERRORS :: ShareStatus
pattern ShareStatusCOMPLETEDWITHERRORS = ShareStatus' "COMPLETED_WITH_ERRORS"

pattern ShareStatusERROR :: ShareStatus
pattern ShareStatusERROR = ShareStatus' "ERROR"

pattern ShareStatusINPROGRESS :: ShareStatus
pattern ShareStatusINPROGRESS = ShareStatus' "IN_PROGRESS"

pattern ShareStatusNOTSTARTED :: ShareStatus
pattern ShareStatusNOTSTARTED = ShareStatus' "NOT_STARTED"

{-# COMPLETE
  ShareStatusCOMPLETED,
  ShareStatusCOMPLETEDWITHERRORS,
  ShareStatusERROR,
  ShareStatusINPROGRESS,
  ShareStatusNOTSTARTED,
  ShareStatus'
  #-}

instance Prelude.FromText ShareStatus where
  parser = ShareStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShareStatus where
  toText (ShareStatus' x) = x

instance Prelude.Hashable ShareStatus

instance Prelude.NFData ShareStatus

instance Prelude.ToByteString ShareStatus

instance Prelude.ToQuery ShareStatus

instance Prelude.ToHeader ShareStatus

instance Prelude.FromJSON ShareStatus where
  parseJSON = Prelude.parseJSONText "ShareStatus"
