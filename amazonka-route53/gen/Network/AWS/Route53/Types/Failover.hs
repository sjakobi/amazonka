{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.Failover
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.Failover
  ( Failover
      ( ..,
        Primary,
        Secondary
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

data Failover = Failover' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Primary :: Failover
pattern Primary = Failover' "PRIMARY"

pattern Secondary :: Failover
pattern Secondary = Failover' "SECONDARY"

{-# COMPLETE
  Primary,
  Secondary,
  Failover'
  #-}

instance FromText Failover where
  parser = (Failover' . mk) <$> takeText

instance ToText Failover where
  toText (Failover' ci) = original ci

instance Hashable Failover

instance NFData Failover

instance ToByteString Failover

instance ToQuery Failover

instance ToHeader Failover

instance FromXML Failover where
  parseXML = parseXMLText "Failover"

instance ToXML Failover where
  toXML = toXMLText
