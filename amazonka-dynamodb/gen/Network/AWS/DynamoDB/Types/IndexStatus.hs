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
-- Module      : Network.AWS.DynamoDB.Types.IndexStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.IndexStatus
  ( IndexStatus
      ( ..,
        IndexStatusACTIVE,
        IndexStatusCREATING,
        IndexStatusDELETING,
        IndexStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IndexStatus = IndexStatus'
  { fromIndexStatus ::
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

pattern IndexStatusACTIVE :: IndexStatus
pattern IndexStatusACTIVE = IndexStatus' "ACTIVE"

pattern IndexStatusCREATING :: IndexStatus
pattern IndexStatusCREATING = IndexStatus' "CREATING"

pattern IndexStatusDELETING :: IndexStatus
pattern IndexStatusDELETING = IndexStatus' "DELETING"

pattern IndexStatusUPDATING :: IndexStatus
pattern IndexStatusUPDATING = IndexStatus' "UPDATING"

{-# COMPLETE
  IndexStatusACTIVE,
  IndexStatusCREATING,
  IndexStatusDELETING,
  IndexStatusUPDATING,
  IndexStatus'
  #-}

instance Prelude.FromText IndexStatus where
  parser = IndexStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText IndexStatus where
  toText (IndexStatus' x) = x

instance Prelude.Hashable IndexStatus

instance Prelude.NFData IndexStatus

instance Prelude.ToByteString IndexStatus

instance Prelude.ToQuery IndexStatus

instance Prelude.ToHeader IndexStatus

instance Prelude.FromJSON IndexStatus where
  parseJSON = Prelude.parseJSONText "IndexStatus"
