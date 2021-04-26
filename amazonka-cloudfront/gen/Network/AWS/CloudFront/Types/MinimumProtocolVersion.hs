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
-- Module      : Network.AWS.CloudFront.Types.MinimumProtocolVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.MinimumProtocolVersion
  ( MinimumProtocolVersion
      ( ..,
        MinimumProtocolVersionSSLV3,
        MinimumProtocolVersionTLSV1,
        MinimumProtocolVersionTLSV12016,
        MinimumProtocolVersionTLSV1_12016,
        MinimumProtocolVersionTLSV1_22018,
        MinimumProtocolVersionTLSV1_22019
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MinimumProtocolVersion = MinimumProtocolVersion'
  { fromMinimumProtocolVersion ::
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

pattern MinimumProtocolVersionSSLV3 :: MinimumProtocolVersion
pattern MinimumProtocolVersionSSLV3 = MinimumProtocolVersion' "SSLv3"

pattern MinimumProtocolVersionTLSV1 :: MinimumProtocolVersion
pattern MinimumProtocolVersionTLSV1 = MinimumProtocolVersion' "TLSv1"

pattern MinimumProtocolVersionTLSV12016 :: MinimumProtocolVersion
pattern MinimumProtocolVersionTLSV12016 = MinimumProtocolVersion' "TLSv1_2016"

pattern MinimumProtocolVersionTLSV1_12016 :: MinimumProtocolVersion
pattern MinimumProtocolVersionTLSV1_12016 = MinimumProtocolVersion' "TLSv1.1_2016"

pattern MinimumProtocolVersionTLSV1_22018 :: MinimumProtocolVersion
pattern MinimumProtocolVersionTLSV1_22018 = MinimumProtocolVersion' "TLSv1.2_2018"

pattern MinimumProtocolVersionTLSV1_22019 :: MinimumProtocolVersion
pattern MinimumProtocolVersionTLSV1_22019 = MinimumProtocolVersion' "TLSv1.2_2019"

{-# COMPLETE
  MinimumProtocolVersionSSLV3,
  MinimumProtocolVersionTLSV1,
  MinimumProtocolVersionTLSV12016,
  MinimumProtocolVersionTLSV1_12016,
  MinimumProtocolVersionTLSV1_22018,
  MinimumProtocolVersionTLSV1_22019,
  MinimumProtocolVersion'
  #-}

instance Prelude.FromText MinimumProtocolVersion where
  parser = MinimumProtocolVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText MinimumProtocolVersion where
  toText (MinimumProtocolVersion' x) = x

instance Prelude.Hashable MinimumProtocolVersion

instance Prelude.NFData MinimumProtocolVersion

instance Prelude.ToByteString MinimumProtocolVersion

instance Prelude.ToQuery MinimumProtocolVersion

instance Prelude.ToHeader MinimumProtocolVersion

instance Prelude.FromXML MinimumProtocolVersion where
  parseXML = Prelude.parseXMLText "MinimumProtocolVersion"

instance Prelude.ToXML MinimumProtocolVersion where
  toXML = Prelude.toXMLText
