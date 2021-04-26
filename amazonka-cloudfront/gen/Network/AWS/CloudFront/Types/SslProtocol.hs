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
-- Module      : Network.AWS.CloudFront.Types.SslProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.SslProtocol
  ( SslProtocol
      ( ..,
        SslProtocolSSLV3,
        SslProtocolTLSV1,
        SslProtocolTLSV1_1,
        SslProtocolTLSV1_2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SslProtocol = SslProtocol'
  { fromSslProtocol ::
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

pattern SslProtocolSSLV3 :: SslProtocol
pattern SslProtocolSSLV3 = SslProtocol' "SSLv3"

pattern SslProtocolTLSV1 :: SslProtocol
pattern SslProtocolTLSV1 = SslProtocol' "TLSv1"

pattern SslProtocolTLSV1_1 :: SslProtocol
pattern SslProtocolTLSV1_1 = SslProtocol' "TLSv1.1"

pattern SslProtocolTLSV1_2 :: SslProtocol
pattern SslProtocolTLSV1_2 = SslProtocol' "TLSv1.2"

{-# COMPLETE
  SslProtocolSSLV3,
  SslProtocolTLSV1,
  SslProtocolTLSV1_1,
  SslProtocolTLSV1_2,
  SslProtocol'
  #-}

instance Prelude.FromText SslProtocol where
  parser = SslProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText SslProtocol where
  toText (SslProtocol' x) = x

instance Prelude.Hashable SslProtocol

instance Prelude.NFData SslProtocol

instance Prelude.ToByteString SslProtocol

instance Prelude.ToQuery SslProtocol

instance Prelude.ToHeader SslProtocol

instance Prelude.FromXML SslProtocol where
  parseXML = Prelude.parseXMLText "SslProtocol"

instance Prelude.ToXML SslProtocol where
  toXML = Prelude.toXMLText
