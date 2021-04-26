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
-- Module      : Network.AWS.SMS.Types.ServerCatalogStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerCatalogStatus
  ( ServerCatalogStatus
      ( ..,
        ServerCatalogStatusAVAILABLE,
        ServerCatalogStatusDELETED,
        ServerCatalogStatusEXPIRED,
        ServerCatalogStatusIMPORTING,
        ServerCatalogStatusNOTIMPORTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServerCatalogStatus = ServerCatalogStatus'
  { fromServerCatalogStatus ::
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

pattern ServerCatalogStatusAVAILABLE :: ServerCatalogStatus
pattern ServerCatalogStatusAVAILABLE = ServerCatalogStatus' "AVAILABLE"

pattern ServerCatalogStatusDELETED :: ServerCatalogStatus
pattern ServerCatalogStatusDELETED = ServerCatalogStatus' "DELETED"

pattern ServerCatalogStatusEXPIRED :: ServerCatalogStatus
pattern ServerCatalogStatusEXPIRED = ServerCatalogStatus' "EXPIRED"

pattern ServerCatalogStatusIMPORTING :: ServerCatalogStatus
pattern ServerCatalogStatusIMPORTING = ServerCatalogStatus' "IMPORTING"

pattern ServerCatalogStatusNOTIMPORTED :: ServerCatalogStatus
pattern ServerCatalogStatusNOTIMPORTED = ServerCatalogStatus' "NOT_IMPORTED"

{-# COMPLETE
  ServerCatalogStatusAVAILABLE,
  ServerCatalogStatusDELETED,
  ServerCatalogStatusEXPIRED,
  ServerCatalogStatusIMPORTING,
  ServerCatalogStatusNOTIMPORTED,
  ServerCatalogStatus'
  #-}

instance Prelude.FromText ServerCatalogStatus where
  parser = ServerCatalogStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServerCatalogStatus where
  toText (ServerCatalogStatus' x) = x

instance Prelude.Hashable ServerCatalogStatus

instance Prelude.NFData ServerCatalogStatus

instance Prelude.ToByteString ServerCatalogStatus

instance Prelude.ToQuery ServerCatalogStatus

instance Prelude.ToHeader ServerCatalogStatus

instance Prelude.FromJSON ServerCatalogStatus where
  parseJSON = Prelude.parseJSONText "ServerCatalogStatus"
