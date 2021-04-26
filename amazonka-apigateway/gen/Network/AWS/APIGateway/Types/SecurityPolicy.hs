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
-- Module      : Network.AWS.APIGateway.Types.SecurityPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.SecurityPolicy
  ( SecurityPolicy
      ( ..,
        SecurityPolicyTLS10,
        SecurityPolicyTLS12
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SecurityPolicy = SecurityPolicy'
  { fromSecurityPolicy ::
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

pattern SecurityPolicyTLS10 :: SecurityPolicy
pattern SecurityPolicyTLS10 = SecurityPolicy' "TLS_1_0"

pattern SecurityPolicyTLS12 :: SecurityPolicy
pattern SecurityPolicyTLS12 = SecurityPolicy' "TLS_1_2"

{-# COMPLETE
  SecurityPolicyTLS10,
  SecurityPolicyTLS12,
  SecurityPolicy'
  #-}

instance Prelude.FromText SecurityPolicy where
  parser = SecurityPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SecurityPolicy where
  toText (SecurityPolicy' x) = x

instance Prelude.Hashable SecurityPolicy

instance Prelude.NFData SecurityPolicy

instance Prelude.ToByteString SecurityPolicy

instance Prelude.ToQuery SecurityPolicy

instance Prelude.ToHeader SecurityPolicy

instance Prelude.ToJSON SecurityPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SecurityPolicy where
  parseJSON = Prelude.parseJSONText "SecurityPolicy"
