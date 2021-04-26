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
-- Module      : Network.AWS.WorkDocs.Types.SubscriptionProtocolType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.SubscriptionProtocolType
  ( SubscriptionProtocolType
      ( ..,
        SubscriptionProtocolTypeHTTPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SubscriptionProtocolType = SubscriptionProtocolType'
  { fromSubscriptionProtocolType ::
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

pattern SubscriptionProtocolTypeHTTPS :: SubscriptionProtocolType
pattern SubscriptionProtocolTypeHTTPS = SubscriptionProtocolType' "HTTPS"

{-# COMPLETE
  SubscriptionProtocolTypeHTTPS,
  SubscriptionProtocolType'
  #-}

instance Prelude.FromText SubscriptionProtocolType where
  parser = SubscriptionProtocolType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SubscriptionProtocolType where
  toText (SubscriptionProtocolType' x) = x

instance Prelude.Hashable SubscriptionProtocolType

instance Prelude.NFData SubscriptionProtocolType

instance Prelude.ToByteString SubscriptionProtocolType

instance Prelude.ToQuery SubscriptionProtocolType

instance Prelude.ToHeader SubscriptionProtocolType

instance Prelude.ToJSON SubscriptionProtocolType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SubscriptionProtocolType where
  parseJSON = Prelude.parseJSONText "SubscriptionProtocolType"
