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
-- Module      : Network.AWS.Connect.Types.QueueType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QueueType
  ( QueueType
      ( ..,
        QueueTypeAGENT,
        QueueTypeSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QueueType = QueueType'
  { fromQueueType ::
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

pattern QueueTypeAGENT :: QueueType
pattern QueueTypeAGENT = QueueType' "AGENT"

pattern QueueTypeSTANDARD :: QueueType
pattern QueueTypeSTANDARD = QueueType' "STANDARD"

{-# COMPLETE
  QueueTypeAGENT,
  QueueTypeSTANDARD,
  QueueType'
  #-}

instance Prelude.FromText QueueType where
  parser = QueueType' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueueType where
  toText (QueueType' x) = x

instance Prelude.Hashable QueueType

instance Prelude.NFData QueueType

instance Prelude.ToByteString QueueType

instance Prelude.ToQuery QueueType

instance Prelude.ToHeader QueueType

instance Prelude.ToJSON QueueType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON QueueType where
  parseJSON = Prelude.parseJSONText "QueueType"
