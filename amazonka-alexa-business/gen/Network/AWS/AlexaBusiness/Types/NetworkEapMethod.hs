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
-- Module      : Network.AWS.AlexaBusiness.Types.NetworkEapMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.NetworkEapMethod
  ( NetworkEapMethod
      ( ..,
        NetworkEapMethodEAPTLS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NetworkEapMethod = NetworkEapMethod'
  { fromNetworkEapMethod ::
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

pattern NetworkEapMethodEAPTLS :: NetworkEapMethod
pattern NetworkEapMethodEAPTLS = NetworkEapMethod' "EAP_TLS"

{-# COMPLETE
  NetworkEapMethodEAPTLS,
  NetworkEapMethod'
  #-}

instance Prelude.FromText NetworkEapMethod where
  parser = NetworkEapMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkEapMethod where
  toText (NetworkEapMethod' x) = x

instance Prelude.Hashable NetworkEapMethod

instance Prelude.NFData NetworkEapMethod

instance Prelude.ToByteString NetworkEapMethod

instance Prelude.ToQuery NetworkEapMethod

instance Prelude.ToHeader NetworkEapMethod

instance Prelude.ToJSON NetworkEapMethod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NetworkEapMethod where
  parseJSON = Prelude.parseJSONText "NetworkEapMethod"
