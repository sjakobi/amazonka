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
-- Module      : Network.AWS.Lightsail.Types.OriginProtocolPolicyEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.OriginProtocolPolicyEnum
  ( OriginProtocolPolicyEnum
      ( ..,
        OriginProtocolPolicyEnumHttpOnly,
        OriginProtocolPolicyEnumHttpsOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OriginProtocolPolicyEnum = OriginProtocolPolicyEnum'
  { fromOriginProtocolPolicyEnum ::
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

pattern OriginProtocolPolicyEnumHttpOnly :: OriginProtocolPolicyEnum
pattern OriginProtocolPolicyEnumHttpOnly = OriginProtocolPolicyEnum' "http-only"

pattern OriginProtocolPolicyEnumHttpsOnly :: OriginProtocolPolicyEnum
pattern OriginProtocolPolicyEnumHttpsOnly = OriginProtocolPolicyEnum' "https-only"

{-# COMPLETE
  OriginProtocolPolicyEnumHttpOnly,
  OriginProtocolPolicyEnumHttpsOnly,
  OriginProtocolPolicyEnum'
  #-}

instance Prelude.FromText OriginProtocolPolicyEnum where
  parser = OriginProtocolPolicyEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText OriginProtocolPolicyEnum where
  toText (OriginProtocolPolicyEnum' x) = x

instance Prelude.Hashable OriginProtocolPolicyEnum

instance Prelude.NFData OriginProtocolPolicyEnum

instance Prelude.ToByteString OriginProtocolPolicyEnum

instance Prelude.ToQuery OriginProtocolPolicyEnum

instance Prelude.ToHeader OriginProtocolPolicyEnum

instance Prelude.ToJSON OriginProtocolPolicyEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OriginProtocolPolicyEnum where
  parseJSON = Prelude.parseJSONText "OriginProtocolPolicyEnum"
