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
-- Module      : Network.AWS.SES.Types.TlsPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.TlsPolicy
  ( TlsPolicy
      ( ..,
        TlsPolicyOptional,
        TlsPolicyRequire
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TlsPolicy = TlsPolicy'
  { fromTlsPolicy ::
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

pattern TlsPolicyOptional :: TlsPolicy
pattern TlsPolicyOptional = TlsPolicy' "Optional"

pattern TlsPolicyRequire :: TlsPolicy
pattern TlsPolicyRequire = TlsPolicy' "Require"

{-# COMPLETE
  TlsPolicyOptional,
  TlsPolicyRequire,
  TlsPolicy'
  #-}

instance Prelude.FromText TlsPolicy where
  parser = TlsPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText TlsPolicy where
  toText (TlsPolicy' x) = x

instance Prelude.Hashable TlsPolicy

instance Prelude.NFData TlsPolicy

instance Prelude.ToByteString TlsPolicy

instance Prelude.ToQuery TlsPolicy

instance Prelude.ToHeader TlsPolicy

instance Prelude.FromXML TlsPolicy where
  parseXML = Prelude.parseXMLText "TlsPolicy"
