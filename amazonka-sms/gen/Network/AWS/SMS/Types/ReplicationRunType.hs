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
-- Module      : Network.AWS.SMS.Types.ReplicationRunType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ReplicationRunType
  ( ReplicationRunType
      ( ..,
        ReplicationRunTypeAUTOMATIC,
        ReplicationRunTypeONDEMAND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicationRunType = ReplicationRunType'
  { fromReplicationRunType ::
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

pattern ReplicationRunTypeAUTOMATIC :: ReplicationRunType
pattern ReplicationRunTypeAUTOMATIC = ReplicationRunType' "AUTOMATIC"

pattern ReplicationRunTypeONDEMAND :: ReplicationRunType
pattern ReplicationRunTypeONDEMAND = ReplicationRunType' "ON_DEMAND"

{-# COMPLETE
  ReplicationRunTypeAUTOMATIC,
  ReplicationRunTypeONDEMAND,
  ReplicationRunType'
  #-}

instance Prelude.FromText ReplicationRunType where
  parser = ReplicationRunType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicationRunType where
  toText (ReplicationRunType' x) = x

instance Prelude.Hashable ReplicationRunType

instance Prelude.NFData ReplicationRunType

instance Prelude.ToByteString ReplicationRunType

instance Prelude.ToQuery ReplicationRunType

instance Prelude.ToHeader ReplicationRunType

instance Prelude.FromJSON ReplicationRunType where
  parseJSON = Prelude.parseJSONText "ReplicationRunType"
