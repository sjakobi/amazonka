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
-- Module      : Network.AWS.IoT.Types.CertificateMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CertificateMode
  ( CertificateMode
      ( ..,
        CertificateModeDEFAULT,
        CertificateModeSNIONLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateMode = CertificateMode'
  { fromCertificateMode ::
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

pattern CertificateModeDEFAULT :: CertificateMode
pattern CertificateModeDEFAULT = CertificateMode' "DEFAULT"

pattern CertificateModeSNIONLY :: CertificateMode
pattern CertificateModeSNIONLY = CertificateMode' "SNI_ONLY"

{-# COMPLETE
  CertificateModeDEFAULT,
  CertificateModeSNIONLY,
  CertificateMode'
  #-}

instance Prelude.FromText CertificateMode where
  parser = CertificateMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CertificateMode where
  toText (CertificateMode' x) = x

instance Prelude.Hashable CertificateMode

instance Prelude.NFData CertificateMode

instance Prelude.ToByteString CertificateMode

instance Prelude.ToQuery CertificateMode

instance Prelude.ToHeader CertificateMode

instance Prelude.FromJSON CertificateMode where
  parseJSON = Prelude.parseJSONText "CertificateMode"
