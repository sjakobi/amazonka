{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.CertificateMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CertificateMode
  ( CertificateMode
      ( ..,
        Default,
        SNIOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateMode = CertificateMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Default :: CertificateMode
pattern Default = CertificateMode' "DEFAULT"

pattern SNIOnly :: CertificateMode
pattern SNIOnly = CertificateMode' "SNI_ONLY"

{-# COMPLETE
  Default,
  SNIOnly,
  CertificateMode'
  #-}

instance FromText CertificateMode where
  parser = (CertificateMode' . mk) <$> takeText

instance ToText CertificateMode where
  toText (CertificateMode' ci) = original ci

instance Hashable CertificateMode

instance NFData CertificateMode

instance ToByteString CertificateMode

instance ToQuery CertificateMode

instance ToHeader CertificateMode

instance FromJSON CertificateMode where
  parseJSON = parseJSONText "CertificateMode"
