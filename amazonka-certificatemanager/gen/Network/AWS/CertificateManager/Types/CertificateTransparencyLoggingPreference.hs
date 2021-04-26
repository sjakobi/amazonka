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
-- Module      : Network.AWS.CertificateManager.Types.CertificateTransparencyLoggingPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.CertificateTransparencyLoggingPreference
  ( CertificateTransparencyLoggingPreference
      ( ..,
        CertificateTransparencyLoggingPreferenceDISABLED,
        CertificateTransparencyLoggingPreferenceENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateTransparencyLoggingPreference = CertificateTransparencyLoggingPreference'
  { fromCertificateTransparencyLoggingPreference ::
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

pattern CertificateTransparencyLoggingPreferenceDISABLED :: CertificateTransparencyLoggingPreference
pattern CertificateTransparencyLoggingPreferenceDISABLED = CertificateTransparencyLoggingPreference' "DISABLED"

pattern CertificateTransparencyLoggingPreferenceENABLED :: CertificateTransparencyLoggingPreference
pattern CertificateTransparencyLoggingPreferenceENABLED = CertificateTransparencyLoggingPreference' "ENABLED"

{-# COMPLETE
  CertificateTransparencyLoggingPreferenceDISABLED,
  CertificateTransparencyLoggingPreferenceENABLED,
  CertificateTransparencyLoggingPreference'
  #-}

instance Prelude.FromText CertificateTransparencyLoggingPreference where
  parser = CertificateTransparencyLoggingPreference' Prelude.<$> Prelude.takeText

instance Prelude.ToText CertificateTransparencyLoggingPreference where
  toText (CertificateTransparencyLoggingPreference' x) = x

instance Prelude.Hashable CertificateTransparencyLoggingPreference

instance Prelude.NFData CertificateTransparencyLoggingPreference

instance Prelude.ToByteString CertificateTransparencyLoggingPreference

instance Prelude.ToQuery CertificateTransparencyLoggingPreference

instance Prelude.ToHeader CertificateTransparencyLoggingPreference

instance Prelude.ToJSON CertificateTransparencyLoggingPreference where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CertificateTransparencyLoggingPreference where
  parseJSON = Prelude.parseJSONText "CertificateTransparencyLoggingPreference"
