{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.CertificateTransparencyLoggingPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.CertificateTransparencyLoggingPreference
  ( CertificateTransparencyLoggingPreference
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateTransparencyLoggingPreference
  = CertificateTransparencyLoggingPreference'
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

pattern Disabled :: CertificateTransparencyLoggingPreference
pattern Disabled = CertificateTransparencyLoggingPreference' "DISABLED"

pattern Enabled :: CertificateTransparencyLoggingPreference
pattern Enabled = CertificateTransparencyLoggingPreference' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  CertificateTransparencyLoggingPreference'
  #-}

instance FromText CertificateTransparencyLoggingPreference where
  parser = (CertificateTransparencyLoggingPreference' . mk) <$> takeText

instance ToText CertificateTransparencyLoggingPreference where
  toText (CertificateTransparencyLoggingPreference' ci) = original ci

instance Hashable CertificateTransparencyLoggingPreference

instance NFData CertificateTransparencyLoggingPreference

instance ToByteString CertificateTransparencyLoggingPreference

instance ToQuery CertificateTransparencyLoggingPreference

instance ToHeader CertificateTransparencyLoggingPreference

instance ToJSON CertificateTransparencyLoggingPreference where
  toJSON = toJSONText

instance FromJSON CertificateTransparencyLoggingPreference where
  parseJSON = parseJSONText "CertificateTransparencyLoggingPreference"
