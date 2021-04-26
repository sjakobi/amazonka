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
-- Module      : Network.AWS.ElasticSearch.Types.TLSSecurityPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.TLSSecurityPolicy
  ( TLSSecurityPolicy
      ( ..,
        TLSSecurityPolicyPolicyMinTLS10201907,
        TLSSecurityPolicyPolicyMinTLS12201907
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TLSSecurityPolicy = TLSSecurityPolicy'
  { fromTLSSecurityPolicy ::
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

pattern TLSSecurityPolicyPolicyMinTLS10201907 :: TLSSecurityPolicy
pattern TLSSecurityPolicyPolicyMinTLS10201907 = TLSSecurityPolicy' "Policy-Min-TLS-1-0-2019-07"

pattern TLSSecurityPolicyPolicyMinTLS12201907 :: TLSSecurityPolicy
pattern TLSSecurityPolicyPolicyMinTLS12201907 = TLSSecurityPolicy' "Policy-Min-TLS-1-2-2019-07"

{-# COMPLETE
  TLSSecurityPolicyPolicyMinTLS10201907,
  TLSSecurityPolicyPolicyMinTLS12201907,
  TLSSecurityPolicy'
  #-}

instance Prelude.FromText TLSSecurityPolicy where
  parser = TLSSecurityPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText TLSSecurityPolicy where
  toText (TLSSecurityPolicy' x) = x

instance Prelude.Hashable TLSSecurityPolicy

instance Prelude.NFData TLSSecurityPolicy

instance Prelude.ToByteString TLSSecurityPolicy

instance Prelude.ToQuery TLSSecurityPolicy

instance Prelude.ToHeader TLSSecurityPolicy

instance Prelude.ToJSON TLSSecurityPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TLSSecurityPolicy where
  parseJSON = Prelude.parseJSONText "TLSSecurityPolicy"
