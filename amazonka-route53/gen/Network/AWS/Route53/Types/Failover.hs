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
-- Module      : Network.AWS.Route53.Types.Failover
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.Failover
  ( Failover
      ( ..,
        FailoverPRIMARY,
        FailoverSECONDARY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype Failover = Failover'
  { fromFailover ::
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

pattern FailoverPRIMARY :: Failover
pattern FailoverPRIMARY = Failover' "PRIMARY"

pattern FailoverSECONDARY :: Failover
pattern FailoverSECONDARY = Failover' "SECONDARY"

{-# COMPLETE
  FailoverPRIMARY,
  FailoverSECONDARY,
  Failover'
  #-}

instance Prelude.FromText Failover where
  parser = Failover' Prelude.<$> Prelude.takeText

instance Prelude.ToText Failover where
  toText (Failover' x) = x

instance Prelude.Hashable Failover

instance Prelude.NFData Failover

instance Prelude.ToByteString Failover

instance Prelude.ToQuery Failover

instance Prelude.ToHeader Failover

instance Prelude.FromXML Failover where
  parseXML = Prelude.parseXMLText "Failover"

instance Prelude.ToXML Failover where
  toXML = Prelude.toXMLText
