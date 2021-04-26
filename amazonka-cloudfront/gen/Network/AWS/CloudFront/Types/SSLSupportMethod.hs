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
-- Module      : Network.AWS.CloudFront.Types.SSLSupportMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.SSLSupportMethod
  ( SSLSupportMethod
      ( ..,
        SSLSupportMethodSniOnly,
        SSLSupportMethodStaticIp,
        SSLSupportMethodVip
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SSLSupportMethod = SSLSupportMethod'
  { fromSSLSupportMethod ::
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

pattern SSLSupportMethodSniOnly :: SSLSupportMethod
pattern SSLSupportMethodSniOnly = SSLSupportMethod' "sni-only"

pattern SSLSupportMethodStaticIp :: SSLSupportMethod
pattern SSLSupportMethodStaticIp = SSLSupportMethod' "static-ip"

pattern SSLSupportMethodVip :: SSLSupportMethod
pattern SSLSupportMethodVip = SSLSupportMethod' "vip"

{-# COMPLETE
  SSLSupportMethodSniOnly,
  SSLSupportMethodStaticIp,
  SSLSupportMethodVip,
  SSLSupportMethod'
  #-}

instance Prelude.FromText SSLSupportMethod where
  parser = SSLSupportMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText SSLSupportMethod where
  toText (SSLSupportMethod' x) = x

instance Prelude.Hashable SSLSupportMethod

instance Prelude.NFData SSLSupportMethod

instance Prelude.ToByteString SSLSupportMethod

instance Prelude.ToQuery SSLSupportMethod

instance Prelude.ToHeader SSLSupportMethod

instance Prelude.FromXML SSLSupportMethod where
  parseXML = Prelude.parseXMLText "SSLSupportMethod"

instance Prelude.ToXML SSLSupportMethod where
  toXML = Prelude.toXMLText
