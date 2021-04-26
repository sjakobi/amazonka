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
-- Module      : Network.AWS.IoT.Types.CACertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CACertificateStatus
  ( CACertificateStatus
      ( ..,
        CACertificateStatusACTIVE,
        CACertificateStatusINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CACertificateStatus = CACertificateStatus'
  { fromCACertificateStatus ::
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

pattern CACertificateStatusACTIVE :: CACertificateStatus
pattern CACertificateStatusACTIVE = CACertificateStatus' "ACTIVE"

pattern CACertificateStatusINACTIVE :: CACertificateStatus
pattern CACertificateStatusINACTIVE = CACertificateStatus' "INACTIVE"

{-# COMPLETE
  CACertificateStatusACTIVE,
  CACertificateStatusINACTIVE,
  CACertificateStatus'
  #-}

instance Prelude.FromText CACertificateStatus where
  parser = CACertificateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CACertificateStatus where
  toText (CACertificateStatus' x) = x

instance Prelude.Hashable CACertificateStatus

instance Prelude.NFData CACertificateStatus

instance Prelude.ToByteString CACertificateStatus

instance Prelude.ToQuery CACertificateStatus

instance Prelude.ToHeader CACertificateStatus

instance Prelude.ToJSON CACertificateStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CACertificateStatus where
  parseJSON = Prelude.parseJSONText "CACertificateStatus"
