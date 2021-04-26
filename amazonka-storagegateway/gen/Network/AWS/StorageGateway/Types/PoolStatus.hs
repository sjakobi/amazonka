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
-- Module      : Network.AWS.StorageGateway.Types.PoolStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.PoolStatus
  ( PoolStatus
      ( ..,
        PoolStatusACTIVE,
        PoolStatusDELETED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PoolStatus = PoolStatus'
  { fromPoolStatus ::
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

pattern PoolStatusACTIVE :: PoolStatus
pattern PoolStatusACTIVE = PoolStatus' "ACTIVE"

pattern PoolStatusDELETED :: PoolStatus
pattern PoolStatusDELETED = PoolStatus' "DELETED"

{-# COMPLETE
  PoolStatusACTIVE,
  PoolStatusDELETED,
  PoolStatus'
  #-}

instance Prelude.FromText PoolStatus where
  parser = PoolStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PoolStatus where
  toText (PoolStatus' x) = x

instance Prelude.Hashable PoolStatus

instance Prelude.NFData PoolStatus

instance Prelude.ToByteString PoolStatus

instance Prelude.ToQuery PoolStatus

instance Prelude.ToHeader PoolStatus

instance Prelude.FromJSON PoolStatus where
  parseJSON = Prelude.parseJSONText "PoolStatus"
