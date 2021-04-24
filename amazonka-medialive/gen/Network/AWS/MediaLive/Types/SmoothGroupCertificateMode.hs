{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupCertificateMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupCertificateMode
  ( SmoothGroupCertificateMode
      ( ..,
        SGCMSelfSigned,
        SGCMVerifyAuthenticity
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Smooth Group Certificate Mode
data SmoothGroupCertificateMode
  = SmoothGroupCertificateMode'
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

pattern SGCMSelfSigned :: SmoothGroupCertificateMode
pattern SGCMSelfSigned = SmoothGroupCertificateMode' "SELF_SIGNED"

pattern SGCMVerifyAuthenticity :: SmoothGroupCertificateMode
pattern SGCMVerifyAuthenticity = SmoothGroupCertificateMode' "VERIFY_AUTHENTICITY"

{-# COMPLETE
  SGCMSelfSigned,
  SGCMVerifyAuthenticity,
  SmoothGroupCertificateMode'
  #-}

instance FromText SmoothGroupCertificateMode where
  parser = (SmoothGroupCertificateMode' . mk) <$> takeText

instance ToText SmoothGroupCertificateMode where
  toText (SmoothGroupCertificateMode' ci) = original ci

instance Hashable SmoothGroupCertificateMode

instance NFData SmoothGroupCertificateMode

instance ToByteString SmoothGroupCertificateMode

instance ToQuery SmoothGroupCertificateMode

instance ToHeader SmoothGroupCertificateMode

instance ToJSON SmoothGroupCertificateMode where
  toJSON = toJSONText

instance FromJSON SmoothGroupCertificateMode where
  parseJSON = parseJSONText "SmoothGroupCertificateMode"
