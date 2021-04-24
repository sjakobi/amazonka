{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.RtmpOutputCertificateMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.RtmpOutputCertificateMode
  ( RtmpOutputCertificateMode
      ( ..,
        SelfSigned,
        VerifyAuthenticity
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Rtmp Output Certificate Mode
data RtmpOutputCertificateMode
  = RtmpOutputCertificateMode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SelfSigned :: RtmpOutputCertificateMode
pattern SelfSigned = RtmpOutputCertificateMode' "SELF_SIGNED"

pattern VerifyAuthenticity :: RtmpOutputCertificateMode
pattern VerifyAuthenticity = RtmpOutputCertificateMode' "VERIFY_AUTHENTICITY"

{-# COMPLETE
  SelfSigned,
  VerifyAuthenticity,
  RtmpOutputCertificateMode'
  #-}

instance FromText RtmpOutputCertificateMode where
  parser = (RtmpOutputCertificateMode' . mk) <$> takeText

instance ToText RtmpOutputCertificateMode where
  toText (RtmpOutputCertificateMode' ci) = original ci

instance Hashable RtmpOutputCertificateMode

instance NFData RtmpOutputCertificateMode

instance ToByteString RtmpOutputCertificateMode

instance ToQuery RtmpOutputCertificateMode

instance ToHeader RtmpOutputCertificateMode

instance ToJSON RtmpOutputCertificateMode where
  toJSON = toJSONText

instance FromJSON RtmpOutputCertificateMode where
  parseJSON = parseJSONText "RtmpOutputCertificateMode"
