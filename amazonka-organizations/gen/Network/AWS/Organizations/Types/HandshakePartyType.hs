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
-- Module      : Network.AWS.Organizations.Types.HandshakePartyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.HandshakePartyType
  ( HandshakePartyType
      ( ..,
        HandshakePartyTypeACCOUNT,
        HandshakePartyTypeEMAIL,
        HandshakePartyTypeORGANIZATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HandshakePartyType = HandshakePartyType'
  { fromHandshakePartyType ::
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

pattern HandshakePartyTypeACCOUNT :: HandshakePartyType
pattern HandshakePartyTypeACCOUNT = HandshakePartyType' "ACCOUNT"

pattern HandshakePartyTypeEMAIL :: HandshakePartyType
pattern HandshakePartyTypeEMAIL = HandshakePartyType' "EMAIL"

pattern HandshakePartyTypeORGANIZATION :: HandshakePartyType
pattern HandshakePartyTypeORGANIZATION = HandshakePartyType' "ORGANIZATION"

{-# COMPLETE
  HandshakePartyTypeACCOUNT,
  HandshakePartyTypeEMAIL,
  HandshakePartyTypeORGANIZATION,
  HandshakePartyType'
  #-}

instance Prelude.FromText HandshakePartyType where
  parser = HandshakePartyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HandshakePartyType where
  toText (HandshakePartyType' x) = x

instance Prelude.Hashable HandshakePartyType

instance Prelude.NFData HandshakePartyType

instance Prelude.ToByteString HandshakePartyType

instance Prelude.ToQuery HandshakePartyType

instance Prelude.ToHeader HandshakePartyType

instance Prelude.ToJSON HandshakePartyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HandshakePartyType where
  parseJSON = Prelude.parseJSONText "HandshakePartyType"
